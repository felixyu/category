clear all;
load similarity_averaged
load struct_animal
existing_class_name = struct_animal.classes_name(struct_animal.train_class_id);
noval_class_name = struct_animal.classes_name(struct_animal.test_class_id);
color_matrix_with_names(S, existing_class_name, noval_class_name);
