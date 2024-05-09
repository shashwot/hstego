## What is HStego?


**HStego** is a tool for hiding data in bitmap and JPEG images.
This tool uses some of the most advanced steganography methods known today, along with an upper limit on the amount of data that can be hidden so that it cannot be reliably detected by modern steganography tools.

## Command line examples:

HStego can be used from the command line. Here are some examples of how to use it.


Example using bitmap images:

```bash
docker run --rm --platform=linux/amd64 -v "$(pwd)":/app -w /app shashwot/hstego:latest embed secret.txt cover.png stego.png MyP4ssw0rd101
```

```bash
docker run --rm --platform=linux/amd64 -v "$(pwd)":/app -w /app shashwot/hstego:latest extract stego.png content.txt MyP4ssw0rd101
```



Example using JPEG images:

```bash
docker run --rm --platform=linux/amd64 -v "$(pwd)":/app -w /app shashwot/hstego:latest embed secret.txt cover.jpg stego.jpg MyP4ssw0rd101
```

```bash
docker run --rm --platform=linux/amd64 -v "$(pwd)":/app -w /app shashwot/hstego:latest extract stego.jpg content.txt MyP4ssw0rd101
```
