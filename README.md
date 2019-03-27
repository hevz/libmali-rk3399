# libmail-rk3399

The ARM Mali GPU user space drivers for Rockchip RK3399.

## Why need GBM wrapper?

### Issues

```
/usr/bin/gnome-shell: symbol lookup error: /lib/libmutter-4.so.0: undefined symbol: gbm_bo_get_offset
```

### Implemented Symbols
* gbm_bo_get_handle_for_plane
* gbm_bo_get_modifier
* gbm_bo_get_offset
* gbm_bo_get_plane_count
* gbm_bo_get_stride_for_plane
* gbm_surface_create_with_modifiers

## How to use?

```
git clone https://github.com/heiher/libmali-rk3399
cd libmali-rk3399

# Build gbm wrapper
make

# Install to system
sudo cp conf/mali.conf /etc/ld.so.conf.d/
sudo cp -rd lib /usr/lib/mali

# Update ld.so cache
sudo ldconfig
```
