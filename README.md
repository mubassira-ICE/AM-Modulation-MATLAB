
# AM Modulation and Demodulation using MATLAB

## 📡 Project Overview

This project demonstrates the basic working of an **Amplitude Modulation (AM) communication system** using MATLAB.

The project generates a message signal and a carrier signal, performs AM modulation, and then recovers the original message signal using demodulation.

## 🎯 Objectives

* Generate a message signal
* Generate a carrier signal
* Perform Amplitude Modulation (AM)
* Demodulate the AM signal
* Recover the original message signal
* Plot and compare the signals

## 🔄 System Flow

**Message Signal → AM Modulation → AM Signal → Demodulation → Recovered Message**

## ⚙️ Parameters

| Parameter          |   Value |
| ------------------ | ------: |
| Message Frequency  |  500 Hz |
| Carrier Frequency  |  10 kHz |
| Sampling Frequency | 100 kHz |
| Modulation Index   |     0.7 |

## 🛠️ Technique Used

The project uses **envelope detection** for demodulation.

A low-pass filter is used after envelope detection to remove unwanted high-frequency components and recover the original message signal.

## 📊 Expected Outputs

The MATLAB program generates the following plots:

1. **Message Signal**
2. **Carrier Signal**
3. **AM Modulated Signal**
4. **Original vs Recovered Message Signal**

The recovered signal should closely follow the original message signal.

## ▶️ How to Run

1. Open MATLAB.
2. Open `AM_Modulation_Demodulation.m`.
3. Make sure the file is in the MATLAB Current Folder.
4. Click the **Run ▶** button.
5. The required signal plots will be displayed.

## 📁 Project Files

* `AM_Modulation_Demodulation.m` — MATLAB source code
* `README.md` — Project documentation

## 🎓 Learning Outcome

Through this project, the basic concepts of **Amplitude Modulation, demodulation, envelope detection, signal generation, and MATLAB signal visualization** can be understood practically.

## 👩‍💻 Author

**Mubassira-ICE**
