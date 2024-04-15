set -e

python -m build --wheel --sdist

if $PUBLISH_LIB; then
    python -m twine upload dist/* --config-file .pypirc
    # twine upload --repository testpypi dist/*
    echo "Library published"
else
    echo "Library not published"
fi
