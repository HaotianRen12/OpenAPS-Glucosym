# OpenAPS-Glucosym

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <!--
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    -->
    <li><a href="#simulation-workflow">Simulation Workflow</a></li>
      <ul>
        <li><a href="#setting-up-glucosym">Setting up Glucosym</a></li>
        <li><a href="#initializing-and-running-openaps-closed-loop">Initializing and running OpenAPS closed loop</a></li>
        <li><a href="#collocting-output-data">Collecting output data</a></li>
      </ul>
    <li><a href="#acknowledgements">Acknowledgements</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->
## About The Project



<!-- ### Built With

This section should list any major frameworks that you built your project using. Leave any add-ons/plugins for the acknowledgements section. Here are a few examples.
* [Bootstrap](https://getbootstrap.com)
* [JQuery](https://jquery.com)
* [Laravel](https://laravel.com) -->

<!-- GETTING STARTED -->
## Getting Started



### Prerequisites
Before the installation process, the following things need to be installed:
* python2.7   
* pip (``` $ wget https://bootstrap.pypa.io/pip/2.7/get-pip.py ```)   
* virtualenv (``` $ pip install virtualenv ```)  
* git
  
Then, a virtual environment can to be set up with the following steps:  
```sh
$ cd work-folder - change directory to a folder created specifically for OpenAPS and Glucosym  
```
```sh
$ virtualenv --no-site-packages --python=/usr/bin/python2 ./venv/ - set up a virtual environment that uses python2  
```

To enter the virtual environment, use the following command:
```sh
$ source ./venv/bin/activate
```

To quit the virtual environment, use the following command:
```sh
$ deactivate
```

### Installation

1. Clone the repo
  ```sh
  $ git clone https://github.com/HtR212/OpenAPS-Glucosym.git
  ```
  
2. Run the auto-install script  
  ```sh
  $ chmod u+x ./closedloop2.7-setup.sh
  $ ./closedloop2.7-setup.sh
  ```
   
<!-- SIMULATION WORKFLOW -->
## Simulation Workflow  

### Setting up Glucosym  

First, run the following commands:  
```sh
$ cd ./glucosym
$ npm start
```
Then, open a browser and navigate to http://localhost:3000.

### Initializing and running OpenAPS closed loop

Open another terminal window and initialize OpenAPS:
```sh
$ cd [OpenAPS directory] - the name of the OpenAPS directory may vary depends on the name set during the installation  
$ python initialize.py [initial bg]  
```
Next, change the initial bg of the selected patient on the glucosym server and run the closed loop simulation:
```sh
$ python updated_ct_script_iob_based.py [number of iterations]  
```

### Collecting output data
Run the following command:
```sh
$ python updated_collected.py
```
The output data should be collected in a file called data.scv under the OpenAPS directory.

<!-- USAGE EXAMPLES -->
<!-- ## Usage

Use this space to show useful examples of how a project can be used. Additional screenshots, code examples and demos work well in this space. You may also link to more resources.

_For more examples, please refer to the [Documentation](https://example.com)_ -->

<!-- CONTRIBUTING -->
<!-- ## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request -->

<!-- LICENSE -->
<!-- ## License -->

<!-- Distributed under the MIT License. See `LICENSE` for more information. -->

<!-- CONTACT -->
<!-- ## Contact -->

<!--Your Name - [@your_twitter](https://twitter.com/your_username) - email@example.com -->

<!-- Project Link: [https://github.com/HtR212/OpenAPS-Glucosym](https://github.com/HtR212/OpenAPS-Glucosym) -->

<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
<!-- * [GitHub Pages](https://pages.github.com) -->
