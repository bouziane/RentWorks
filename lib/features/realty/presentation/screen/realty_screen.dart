import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentworks/di.dart';
import 'package:rentworks/features/realty/domain/usecases/params/realty_param.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../domain/entities/realty.dart';
import '../cubit/realty_cubit.dart';

class RealtyScreen extends StatefulWidget {
  const RealtyScreen({super.key});

  @override
  State<RealtyScreen> createState() => _RealtyScreenState();
}

class _RealtyScreenState extends State<RealtyScreen> {
  var realtyCubit = getIt<RealtyCubit>();

  @override
  void initState() {
    super.initState();
    getIt<RealtyCubit>().getAllRealties();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<RealtyCubit, RealtyState>(
        bloc: getIt<RealtyCubit>(),
        builder: (context, state) {
          if (state is RealtyLoaded) {
            return ResponsiveBuilder(
              builder: (context, sizingInformation) {
                if (sizingInformation.deviceScreenType ==
                    DeviceScreenType.mobile) {
                  // Mobile layout
                  return ListView.builder(
                    padding: const EdgeInsets.all(10),
                    itemCount: state.allRealty.length,
                    itemBuilder: (BuildContext context, int index) {
                      return buildRealtyCard(context, state.allRealty[index]);
                    },
                  );
                } else {
                  // Web layout
                  return GridView.builder(
                    padding: const EdgeInsets.all(10),
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 400,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemCount: state.allRealty.length,
                    itemBuilder: (BuildContext context, int index) {
                      return buildRealtyCard(context, state.allRealty[index]);
                    },
                  );
                }
              },
            );
          } else {
            return Container();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          RealtyParam testRealtyParam = const RealtyParam(
            name: " name",
            description: "description test micro",
            location: "location",
            price: 1,
            available: true,
            amenities: ["amenities"],
            owner: "owner",
            photos: ["photos"],
          );

          realtyCubit.createRealty(testRealtyParam);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget buildRealtyCard(BuildContext context, Realty realty) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return RealtyDetails(realty: realty);
          },
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: NetworkImage(
              realty.photos != null && realty.photos!.isNotEmpty
                  ? realty.photos![0]
                  : 'https://images.unsplash.com/photo-1523217582562-09d0def993a6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1480&q=80',
            ),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.4), BlendMode.darken),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                realty.name ?? 'Unnamed Property',
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                overflow: TextOverflow.ellipsis,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(4.0),
                    color: Colors.black.withOpacity(0.5),
                    child: Text(
                      'Location: ${realty.location ?? 'Not available'}',
                      style: const TextStyle(fontSize: 16, color: Colors.white),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Container(
                    padding: const EdgeInsets.all(4.0),
                    color: realty.available
                        ? Colors.green.withOpacity(0.5)
                        : Colors.red.withOpacity(0.5),
                    child: Text(
                      realty.available ? 'Available' : 'Not available',
                      style: const TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RealtyDetails extends StatefulWidget {
  Realty realty;

  RealtyDetails({required this.realty});

  @override
  _RealtyDetailsState createState() => _RealtyDetailsState();
}

class _RealtyDetailsState extends State<RealtyDetails> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _locationController;
  late TextEditingController _ownerController;
  late TextEditingController _priceController;
  late TextEditingController _descriptionController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.realty.name);
    _locationController = TextEditingController(text: widget.realty.location);
    _ownerController = TextEditingController(text: widget.realty.owner);
    _priceController =
        TextEditingController(text: widget.realty.price?.toString());
    _descriptionController =
        TextEditingController(text: widget.realty.description);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _locationController.dispose();
    _ownerController.dispose();
    _priceController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void _updateRealty() {
    setState(() {
      widget.realty = widget.realty.copyWith(
        name: _nameController.text,
        location: _locationController.text,
        owner: _ownerController.text,
        price: double.tryParse(_priceController.text),
        description: _descriptionController.text,
      );
    });
  }

  Widget _buildTextField(TextEditingController controller, String label) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
        onChanged: (_) => _updateRealty(),
      ),
    );
  }

  Widget _buildHeader() {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: const Text('Anuler'),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
              onPressed: () {
                _updateRealty();
                Navigator.pop(context);
              },
              child: const Text('Soumettre'),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTextField(_nameController, 'Name'),
                  _buildTextField(_locationController, 'Location'),
                  _buildTextField(_ownerController, 'Owner'),
                  _buildTextField(_priceController, 'Price'),
                  _buildTextField(_descriptionController, 'Description'),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
          _buildHeader(),
        ],
      ),
    );
  }
}
