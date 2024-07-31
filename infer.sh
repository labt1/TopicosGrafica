python tools/infer.py \
    -c configs/rtdetr/rtdetr_r50vd_6x_coco.yml \
    -o weights=output/rtdetr_r50vd_6x_personas/best_model.pdparams \
    --infer_img=assets/bus.jpg \
    --draw_threshold=0.15 \
    --visualize=True