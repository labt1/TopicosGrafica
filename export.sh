python tools/export_model.py \
            -c configs/rtdetr/rtdetr_r50vd_6x_coco.yml \
            -o weights=output/rtdetr_r50vd_6x_personas/best_model.pdparams \
            trt=True \
            --output_dir=output_inference

python paddle_infer_shape.py \
        --model_dir=./output_inference/rtdetr_r50vd_6x_personas \
        --model_filename model.pdmodel  \
        --params_filename model.pdiparams \
        --save_dir rtdetr_r50_personas_export \
        --input_shape_dict="{'image':[-1,3,640,640]}"