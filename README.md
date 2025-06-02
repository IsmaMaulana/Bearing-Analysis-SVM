# Bearing Diagnostic Using Machine Learning ⚙️📊

<h1>Bearing Analysis using HUST bearing: a practical dataset for ball bearing fault diagnosis</h1>

<h2>Project Overview</h2>
This study presents a practical approach to ball bearing fault diagnosis using the HUST (Huazhong University of Science and Technology) bearing dataset, which contains vibration signal data from various bearing health conditions. The objective is to accurately classify different types of bearing faults — such as inner race faults, outer race faults, and ball defects — as well as distinguish them from normal operational conditions.

This project implements an SVM-based machine learning model to diagnose bearing faults in rotating machinery. By analyzing vibration signals and extracting statistical features, the system can accurately classify different bearing conditions (healthy, inner race fault, outer race fault, and ball fault). The model is trained and tested using real vibration data across various speeds (500, 1000, 1500 RPM), demonstrating high accuracy and strong generalization.

<h2>Key Features</h2>
<b>✅ Precision Fault Classification – Effectively distinguishes between different bearing faults and normal conditions.</b>

<b>✅ High Accuracy – SVM achieves up to 97.9% classification accuracy across various operating speeds.</b>

<b>✅ Feature Engineering – Utilizes Ensemble Empirical Mode Decomposition (EEMD) and Distance Evaluation Technique (DET) for optimal feature selection.</b>

<b>✅ MATLAB-Based Implementation – Full pipeline developed in MATLAB, from preprocessing to model training and validation.</b>

<b>✅ Speed Variation Testing – Performance tested at 500 RPM, 1000 RPM, and 1500 RPM to ensure robustness under varying operating conditions.</b>

<h2>Development Process</h2>
<b>1️⃣ Data Collection – Vibration signals recorded from sensors mounted on defective and healthy bearing housings.</b>

<b>2️⃣ Signal Processing – Applied time-domain and frequency-domain analysis to extract statistical indicators (e.g., RMS, kurtosis, skewness).</b>

<b>3️⃣ Feature Selection – Implemented EEMD and DET to reduce noise and improve classification input quality.</b>

<b>4️⃣ Machine Learning Model – Trained an SVM classifier using selected features to detect inner race, outer race, and ball defects.</b>

<b>5️⃣ Model Evaluation – Evaluated performance with confusion matrix, precision, recall, F1-score, and cross-validation.</b>

<h2>Results & Impact</h2>
<b>🚀 Achieved average classification accuracy of 97.9% across multiple fault types and speeds.</b>

<b>🚀 Excellent generalization capability, even in noisy environments with overlapping signal patterns.</b>

<b>🚀 Practical for industrial CBM systems in sectors such as oil & gas, energy, and manufacturing.</b>

<h2>Future Improvements</h2>
<b>🔹 Integration with real-time IoT platforms for automated monitoring and alert systems.</b>

<b>🔹 Expansion to handle multi-fault classification and mixed signal sources (acoustic, thermal, etc.).</b>

<h2>Program walk-through:</h2>

<p align="center">
Scatter Plot Of Support Vector Machine Model: <br/>
<img src="https://imgur.com/dt7VhrE.png" height="80%" width="50%" alt="Disk Sanitization Steps"/>
<br />
<br />
Confussion Matrix Of Support Vector Machine Model:  <br/>
<img src="https://imgur.com/59VBhxx.png" height="80%" width="50%" alt="Disk Sanitization Steps"/>
<br />
<br />
Summary Of Support Vector Machine Model: <br/>
<img src="https://imgur.com/BrgvFDD.png" height="80%" width="50%" alt="Disk Sanitization Steps"/>
<br />
<br />
