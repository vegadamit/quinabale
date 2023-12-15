import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:quinable/api/provider/provider.dart';
class DataScreen extends StatefulWidget {
  const DataScreen({Key? key}) : super(key: key);

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     context.read<TodoProvider>().dataget();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Api')),
      ),
      body:Column(
        children: [
          Container(
              height:200,
              child: Center(child: Text(context.read<TodoProvider>().Loding.toString()))),
          Expanded(
            child: Consumer<TodoProvider>(
                    builder: (context,value,child){
                      if(value.Loding){
                        return  Center(child: CircularProgressIndicator());
                      }
                      final Datas = value.data;
                      return ListView.builder(
                          itemCount: Datas.length,
                          itemBuilder: (context, index) {
                            final datas = Datas[index];
                            return Card(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Id: ${datas.id}'),
                                  Text('Name: ${datas.name}'),
                                  Text('Username: ${datas.username}'),
                                  Text('Phone: ${datas.phone}'),
                                  Text('Email: ${datas.email}'),
                                  Text('Website: ${datas.website}'),
                                  Text('Address: ${datas.address!.street},${datas.address!.suite},${datas.address!.city},${datas.address!.street},${datas.address!.zipcode} '),
                                  Text('Company Name: ${datas.company!.name}'),
                                  Text('Company CatchPhrase: ${datas.company!.catchPhrase}'),
                                  Text('Company Bs: ${datas.company!.bs}'),
                                ],
                              ),
                            );
                          });
                    }

                ),
          ),
        ],
      ),

    );
  }
}
