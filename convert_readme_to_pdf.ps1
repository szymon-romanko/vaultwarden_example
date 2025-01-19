# this can be run in bash or powershell
# it will convert the README.md to a PDF and push it to the repo
git pull
docker run --rm -v "${pwd}:/data" pandoc/extra README.md -s -o README.pdf
git add README.pdf
git commit -m "Auto-generated PDF of README.md"
git push