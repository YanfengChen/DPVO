# DPVO Installation Prompts

## Installation Requirements

1. Check the versions of GPU driver and CUDA platform
2. Check the version of Ubuntu
3. Follow the installation guide in README.md
4. Modify the installation steps to be compatible to the versions of GPU/CUDA platform and Ubuntu OS you get from checking
5. Recommended compatible base packages are:
   - Python 3.10
   - PyTorch build (stable 2.9.1+cu130) from https://download.pytorch.org/whl/cu130
   - CUDA toolkit/nvcc 13.0
6. Resolve the errors in installing and install DPVO successfully
7. Don't step into the installation of "Recommended - Install the Pangolin Viewer" and "Classical Backend (optional)"
8. Run the demo to test the DPVO installation

## Target System Configuration

- **GPU**: NVIDIA RTX 5090
- **OS**: Ubuntu 24.04
- **CUDA**: 13.0
- **Python**: 3.10
- **PyTorch**: 2.9.1+cu130

## Installation Scope

### Included:
- Core DPVO package
- Essential Python dependencies
- Pre-trained models and demo data

### Excluded:
- Pangolin Viewer (optional visualization)
- Classical Backend (optional loop closure)

## Testing

After successful installation, verify with:
```bash
python demo.py --imagedir=movies/IMG_0492.MOV --calib=calib/iphone.txt --stride=5 --plot
```
