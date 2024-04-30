# How to Run Trivy with Act

## Installing Act

Act is a command-line tool that allows you to run GitHub Actions locally. This can be useful for testing your GitHub Actions workflows before pushing changes to GitHub. Here's how to install Act:

### Using Homebrew (macOS)

If you're on macOS and have Homebrew installed, you can install Act using the following command:
```
brew install act
```


### Using Chocolatey (Windows)

If you're on Windows and have Chocolatey installed, you can install Act using the following command:
```
choco install act-cli
```


### Using Go (Cross-platform)

Alternatively, you can install Act using Go:
```
go install github.com/nektos/act@latest
```


## What Act Does

Act allows you to run GitHub Actions workflows locally, simulating the execution environment and providing feedback on how your workflows will behave in a GitHub Actions environment. This can help you catch potential issues and debug your workflows before pushing changes to GitHub.

## Running Trivy with Act

Assuming you have a GitHub Actions workflow that includes a Trivy scan step, you can use Act to run the Trivy scan locally. Here's how:

1. Navigate to the directory containing your GitHub Actions workflow files.

2. Open a terminal window.

3. From the root directory of your project, run the following command to execute the GitHub Actions workflow locally:

```
act 
```


4. Act will output the progress of the job, including any log messages or errors encountered during execution.

5. Once the job completes, you can review the output to identify any vulnerabilities detected by Trivy.

By using Act to run the Trivy scan locally, you can verify the behavior of your Trivy scan job and ensure that it functions as expected before pushing changes to GitHub.

For items where there is currently no solution, see the [.trivyignore file](Trivy_ignored_files.md). It contains an explanation of why the vulnerability has been ignored and the date when it was last updated. It is advised to review these items periodically to check if the vulnerabilities have been addressed.
