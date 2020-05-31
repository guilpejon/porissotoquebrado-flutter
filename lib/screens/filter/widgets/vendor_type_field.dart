import 'package:flutter/material.dart';
import 'package:porissotoquebrado/models/filter.dart';

class VendorTypeField extends StatelessWidget {
  VendorTypeField({this.onSaved, this.initialValue});

  final FormFieldSetter<int> onSaved;
  final int initialValue;

  @override
  Widget build(BuildContext context) {
    return FormField<int>(
      initialValue: initialValue,
      onSaved: onSaved,
      builder: (state) {
        return Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    if (state.value & VENDOR_NAME_AMAZON != 0) // already active
                      state.didChange(state.value - VENDOR_NAME_AMAZON);
                    else if (state.value & VENDOR_NAME_AMAZON ==
                        0) // not active yet
                      state.didChange(state.value + VENDOR_NAME_AMAZON);
                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: state.value & VENDOR_NAME_AMAZON != 0
                              ? Colors.transparent
                              : Colors.grey),
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      color: state.value & VENDOR_NAME_AMAZON != 0
                          ? Colors.blue
                          : Colors.transparent,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Amazon',
                      style: TextStyle(
                          color: state.value & VENDOR_NAME_AMAZON != 0
                              ? Colors.white
                              : Colors.black),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    if (state.value & VENDOR_NAME_ALIEXPRESS != 0)
                      state.didChange(state.value - VENDOR_NAME_ALIEXPRESS);
                    else if (state.value & VENDOR_NAME_ALIEXPRESS == 0)
                      state.didChange(state.value + VENDOR_NAME_ALIEXPRESS);
                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: state.value & VENDOR_NAME_ALIEXPRESS != 0
                              ? Colors.transparent
                              : Colors.grey),
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      color: state.value & VENDOR_NAME_ALIEXPRESS != 0
                          ? Colors.blue
                          : Colors.transparent,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Aliexpress',
                      style: TextStyle(
                          color: state.value & VENDOR_NAME_ALIEXPRESS != 0
                              ? Colors.white
                              : Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    if (state.value & VENDOR_NAME_MAGALU != 0)
                      state.didChange(state.value - VENDOR_NAME_MAGALU);
                    else if (state.value & VENDOR_NAME_MAGALU == 0)
                      state.didChange(state.value + VENDOR_NAME_MAGALU);
                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: state.value & VENDOR_NAME_MAGALU != 0
                              ? Colors.transparent
                              : Colors.grey),
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      color: state.value & VENDOR_NAME_MAGALU != 0
                          ? Colors.blue
                          : Colors.transparent,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Magalu',
                      style: TextStyle(
                          color: state.value & VENDOR_NAME_MAGALU != 0
                              ? Colors.white
                              : Colors.black),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    if (state.value & VENDOR_NAME_AMERICANAS != 0)
                      state.didChange(state.value - VENDOR_NAME_AMERICANAS);
                    else if (state.value & VENDOR_NAME_AMERICANAS == 0)
                      state.didChange(state.value + VENDOR_NAME_AMERICANAS);
                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: state.value & VENDOR_NAME_AMERICANAS != 0
                              ? Colors.transparent
                              : Colors.grey),
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      color: state.value & VENDOR_NAME_AMERICANAS != 0
                          ? Colors.blue
                          : Colors.transparent,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Americanas',
                      style: TextStyle(
                          color: state.value & VENDOR_NAME_AMERICANAS != 0
                              ? Colors.white
                              : Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
