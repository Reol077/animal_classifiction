import os
import torch
import torchvision.models as models
from torchvision import transforms
from PIL import Image
import json

script_dir = os.path.dirname(os.path.abspath(__file__))
os.chdir(script_dir)

# 加载模型结构
model = models.resnet50()
model.fc = torch.nn.Linear(model.fc.in_features, 90)
model = torch.nn.DataParallel(model)
model.load_state_dict(torch.load('resnet50_state_dict.pth'))
model.eval()

transform = transforms.Compose([
    transforms.Resize(256),
    transforms.CenterCrop(224),
    transforms.ToTensor(),
    transforms.Normalize(mean=[0.485, 0.456, 0.406], std=[0.229, 0.224, 0.225]),
])

# 打开标签
with open('labels.txt', 'r', encoding='utf-8') as file:
    labels = file.readlines()
labels = [label.strip() for label in labels]

# 加载图像并进行预处理
image_path = r"../public/images/upload.jpg"
image = Image.open(image_path).convert('RGB')

input_tensor = transform(image)
input_batch = input_tensor.unsqueeze(0)  # 维度扩展

# 将模型移动到相同的设备上并进行推理
device = torch.device("cuda:0" if torch.cuda.is_available() else "cpu")
input_batch = input_batch.to(device)
model = model.to(device)

# 进行预测
with torch.no_grad():
    output = model(input_batch)
probabilities = torch.nn.functional.softmax(output[0], dim=0)

top10_prob, top10_indices = torch.topk(probabilities, 10)
result = []
for i in range(len(top10_prob)):
    label = labels[top10_indices[i]]
    prob = top10_prob[i].item()
    result.append({"label": label, "probability": prob})
    
print(json.dumps(result))