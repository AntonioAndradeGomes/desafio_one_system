import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RowItem extends StatelessWidget {
  final TextEditingController controllerCode;
  // final TextEditingController controllerText;
  final ValueChanged<String>? onChanged;
  final String type;
  final String name;
  final VoidCallback onPressed;
  const RowItem({
    super.key,
    required this.controllerCode,
    //required this.controllerText,
    this.onChanged,
    required this.type,
    required this.name,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.22,
          child: TextField(
            controller: controllerCode,
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
            onChanged: onChanged,
            decoration: InputDecoration(
              isDense: true,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Theme.of(context).primaryColor.withAlpha(200),
                  width: 2,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 5,
          ),
          child: IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.search,
              size: 30,
            ),
            splashRadius: 30,
          ),
        ),
        Expanded(
          child: TextFormField(
            controller: TextEditingController()..text = name,
            onTap: onPressed,
            readOnly: true,

            style: TextStyle(
              color: Theme.of(context).primaryColor,
            ),
            decoration: InputDecoration(
              labelText: type,
              labelStyle: TextStyle(
                color: Theme.of(context).primaryColor,
              ),
              isDense: true,
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              disabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
            // enabled: false,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            bottom: 35,
            left: 3,
          ),
          child: Text(
            '*',
            style: TextStyle(
              color: Colors.red,
            ),
          ),
        )
      ],
    );
  }
}
