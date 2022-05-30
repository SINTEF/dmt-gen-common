set -e

python setup.py clean --all sdist bdist_wheel

if $PUBLISH_LIB; then
    python -m twine upload dist/* --config-file .pypirc
    # twine upload --repository testpypi dist/*
    echo "Library published"
else
    echo "Library not published"
fi
