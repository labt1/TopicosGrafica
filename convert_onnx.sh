paddle2onnx --model_dir=./rtdetr_r50_personas_export \
            --model_filename model.pdmodel  \
            --params_filename model.pdiparams \
            --opset_version 16 \
            --save_file ./rtdetr_r50_personas_export/rtdetr_r50_personas.onnx

python -m paddle2onnx.optimize --input_model ./rtdetr_r50_personas_export/rtdetr_r50_personas.onnx \
                               --output_model ./rtdetr_r50_personas_export/rtdetr_r50_personas_dynamic.onnx \
                               --input_shape_dict "{'image':[-1,3,640,640]}"

#onnxsim ./rtdetr_r50/rtdetr_r50_coco.onnx ./rtdetr_r50/rtdetr_r50_coco_dynamic.onnx --overwrite-input-shape 'image':-1,3,640,640