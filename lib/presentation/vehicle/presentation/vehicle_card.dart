
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:next_machine_test/domain/entity/vehicle_item.dart';
import 'package:next_machine_test/presentation/vehicle/bloc/vehicle_bloc.dart';
import 'package:next_machine_test/presentation/vehicle/event/vehicle_event.dart';

class VehicleCard extends StatelessWidget {
  final VehicleItem vehicleI;
  const VehicleCard({super.key, required this.vehicleI});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 14),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () => context.read<VehicleBloc>().add(VehicleEvent.deleteVehicle(vehicleI.id)),
                    child: Icon(Icons.delete))),
            Row(
              children: [
                Container(
                  height: 52,
                  width: 52,
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.directions_car_filled,
                    color: Colors.red,
                    size: 30,
                  ),
                ),

                const SizedBox(width: 14),

                /// Details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        vehicleI.name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text("Model: ${vehicleI.model}"),
                      Text("Color: ${vehicleI.color}"),
                      Text("Vehicle No: ${vehicleI.number}"),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
