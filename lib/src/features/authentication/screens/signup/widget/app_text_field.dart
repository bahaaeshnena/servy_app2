import 'package:drop_down_list/drop_down_list.dart';
import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:flutter/material.dart';
import 'package:servy_app2/src/constants/colors.dart';

class AppTextField extends StatefulWidget {
  final TextEditingController textEditingController;
  final String title;
  final String hint;
  final bool isWorkSelected;
  final List<SelectedListItem>? dataList;
  const AppTextField({
    required this.textEditingController,
    required this.title,
    required this.hint,
    required this.isWorkSelected,
    this.dataList,
    Key? key,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AppTextFieldState createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  /// This is on text changed method which will display on city text field on changed.
  void onTextFieldTap() {
    DropDownState(
      DropDown(
        isDismissible: true,
        bottomSheetTitle: Text(
          widget.title,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: kPrimaryColorGreen),
        ),
        submitButtonChild: const Text(
          'Done',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        clearButtonChild: const Text(
          'Clear',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        data: widget.dataList ?? [],
        selectedItems: (List<dynamic> selectedList) {
          List<String> list = [];
          for (var item in selectedList) {
            if (item is SelectedListItem) {
              list.add(item.name);
              widget.textEditingController.text = item.name;
            }
          }
          // showSnackBar(list.toString());
        },
        enableMultipleSelection: false,
      ),
    ).showModal(context);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 20),
          child: Text(
            widget.title,
            style: const TextStyle(
                color: kPrimaryColorGreen,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins'),
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(33.0),
            ),
            elevation: 10,
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please select a work';
                }
                return null;
              },
              // maxLines: 3,
              style: const TextStyle(fontFamily: 'Poppins'),
              controller: widget.textEditingController,
              onTap: widget.isWorkSelected
                  ? () {
                      FocusScope.of(context).unfocus();
                      onTextFieldTap();
                    }
                  : null,
              decoration: InputDecoration(
                errorStyle: const TextStyle(fontFamily: 'Outfit'),
                prefixIcon: const Icon(Icons.work),
                prefixIconColor: kPrimaryColorGreen,
                contentPadding:
                    const EdgeInsets.only(left: 20, right: 20, top: 37),
                hintStyle: const TextStyle(
                    color: kPrimaryColorGreen,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins'),
                hintText: widget.textEditingController.text == ""
                    ? widget.hint
                    : widget.textEditingController.text,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(33),
                  borderSide: const BorderSide(color: Colors.white),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(33),
                    borderSide: const BorderSide(color: Colors.white)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(33),
                  borderSide: const BorderSide(color: Colors.white),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(33),
                  borderSide: const BorderSide(color: Colors.white),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(33),
                  borderSide: const BorderSide(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
      ],
    );
  }
}
