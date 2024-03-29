### VesicleInsight 🩺💻 - Empowering Early Medical Diagnosis*

VesicleInsight is -will be- an innovative Python-powered medical imaging analysis tool designed to revolutionize early detection and diagnosis. Leveraging cutting-edge machine learning algorithms, the project focuses on identifying vesicle abnormalities in medical images. The application provides healthcare professionals with an intuitive user interface, streamlining the diagnostic process and facilitating timely interventions. VesicleInsight's features include advanced imaging analysis, user-friendly interactions, and a commitment to early detection. The open-source nature of the project encourages contributions, making it a collaborative initiative. With a mission to enhance the accuracy and efficiency of medical diagnostics, VesicleInsight stands at the forefront of technology in the healthcare domain.

<sub>* This is currently an ongoing project -many futures are not there yet- and it's in an [(Experimental)](#-important-experimental-project-) phase where the primary focus is on making the system functional and establishing a practical and logical pathway that aligns with both my vision and the project's goals. It might contain errors, bugs, etc. Many other non-core elements of the project are considered secondary.</sub>

![Version](https://img.shields.io/github/release/felipealfonsog/VesicleInsight.svg?style=flat&color=blue)
![Main Language](https://img.shields.io/github/languages/top/felipealfonsog/VesicleInsight.svg?style=flat&color=blue)
[![Open Source? Yes!](https://badgen.net/badge/Open%20Source%20%3F/Yes%21/blue?icon=github)](https://github.com/Naereen/badges/)

[![MIT license](https://img.shields.io/badge/License-MIT-blue.svg)](https://lbesson.mit-license.org/)
<!--
[![GPL license](https://img.shields.io/badge/License-GPL-blue.svg)](http://perso.crans.org/besson/LICENSE.html)
-->

[![Vim](https://img.shields.io/badge/--019733?logo=vim)](https://www.vim.org/)
[![Visual Studio Code](https://img.shields.io/badge/--007ACC?logo=visual%20studio%20code&logoColor=ffffff)](https://code.visualstudio.com/)

To be always updated about the project, keep visiting the GitHub repository. Contributions and feedback are always welcome! 🚀

#### Screenshot - (Experimental)

##### macOS

![Screenshot of the application interface](images/sshot-mac-0.0.2.png)

##### Linux

![Screenshot of the application interface](images/sshot-linux-0.0.2.jpg)

#### Features -ongoing- 💡

- **Advanced Imaging Analysis**: Leverage state-of-the-art machine learning algorithms for in-depth analysis of medical imaging data.
  
- **Early Detection**: Enable healthcare professionals to identify vesicle anomalies at an early stage, facilitating timely intervention.

- **User-Friendly Interface**: A sleek and intuitive user interface designed to streamline the diagnostic process.

#### Install using a BASH script! 

[![Install VesicleInsight](https://img.shields.io/badge/Install-VesicleInsight-brightgreen)](#)


To install VesicleInsight, simply run the installer script available [here](https://github.com/felipealfonsog/VesicleInsight/raw/main/installer.sh).

Or just Copy - Paste in your terminal and use -curl- to start downloading the installer:

   ```
   curl -O https://raw.githubusercontent.com/felipealfonsog/VesicleInsight/main/installer.sh
   ```

If you want to use -wget- just copy/paste this line:

   ```
   wget https://github.com/felipealfonsog/VesicleInsight/raw/main/installer.sh
   ```

   On macOS to download - wget - just install it with Homebrew:

   ```
   brew install wget
   ```

#### Important note when installing:

If you encounter issues executing the file in the terminal, like this message "-bash: ./installer.sh: Permission denied", follow these simple steps to fix it:

1. Open your terminal.
2. Navigate to the directory where the installer script is located using the `cd` command.
3. Run the following command to grant execute permission to the installer script:

   ```
   chmod +x installer.sh
   ```
   
4. Now you can run the installer without any problems.

   ```
   ./installer.sh
   ```
   NOTE: The script will ask for -sudo permissions-. Just simply type in macOS your macOS user password, and in Linux your -sudo- password.

Now type 'VesicleInsight' in the terminal and enjoy using VesicleInsight! 😊🚀

Feel free to reach out if you need any further assistance!

#### Updating with the script: 
If you want to update the program in your system, re-run the script:

   ```
   ./installer.sh
   ```
Please note that if you encounter any issues or have suggestions, feel free to raise an issue on the [VesicleInsight repository](https://github.com/felipealfonsog/VesicleInsight/issues). Your feedback is invaluable!

Thank you for joining me on this journey, and I hope VesicleInsight brings value to your life and workflow. Let's continue making technology accessible and enjoyable for everyone!



#### NOTES

Important dependency

```
pip install scikit-learn
```

Installer:

```
pyinstaller --onefile --hidden-import sklearn src/main.py

```


#### Contributing

Contributions are welcome! Here's how you can contribute to Term Notes:

1. Fork the repository.
2. Create a new branch: `git checkout -b feature/your-feature-name`.
3. Make your changes and commit them: `git commit -m 'Add your feature'`.
4. Push the changes to your branch: `git push origin feature/your-feature-name`.
5. Create a new pull request.

#### 📝 Important (Experimental Project) 💡

[![Experimental Project](https://img.shields.io/badge/Project-Type%3A%20Experimental-blueviolet)](#)

<p>This project is still in its experimental stage and may have limitations in terms of features and compatibility. Use at your own discretion.</p>


#### Contact

Hello! My name is Felipe, and I'm a passionate Computer Science Engineer. I'm also the creator of this project. If you have any questions, suggestions, or just want to chat, feel free to reach out to me. I'd be more than happy to help!

- Email: f.alfonso@res-ear.ch
- LinkedIn: [felipealfonsog](https://www.linkedin.com/in/felipealfonsog/)
- GitHub: [felipealfonsog](https://github.com/felipealfonsog)

#### Support and Contributions

If you find this project helpful and would like to support its development, there are several ways you can contribute:

- **Code Contributions**: If you're a developer, you can contribute by submitting pull requests with bug fixes, new features, or improvements. Feel free to fork the project and create your own branch to work on.
- **Bug Reports and Feedback**: If you encounter any issues or have suggestions for improvement, please open an issue on the project's GitHub repository. Your feedback is valuable in making the project better.
- **Documentation**: Improving the documentation is always appreciated. If you find any gaps or have suggestions to enhance the project's documentation, please let me know.

[![Buy Me a Coffee](https://img.shields.io/badge/Buy%20Me%20a%20Coffee-%E2%98%95-FFDD00?style=flat-square&logo=buy-me-a-coffee&logoColor=black)](https://www.buymeacoffee.com/felipealfonsog)
[![PayPal](https://img.shields.io/badge/Donate%20with-PayPal-00457C?style=flat-square&logo=paypal&logoColor=white)](https://www.paypal.me/felipealfonsog)
[![GitHub Sponsors](https://img.shields.io/badge/Sponsor%20me%20on-GitHub-%23EA4AAA?style=flat-square&logo=github-sponsors&logoColor=white)](https://github.com/sponsors/felipealfonsog)

Your support and contributions are greatly appreciated! Thank you for your help in making this project better.

#### License

Term Notes is licensed under the MIT License. See [LICENSE](LICENSE) for more information.
