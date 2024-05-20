class RoutesModel {
  int? id;
  String? ciudad;
  String? tipoTransporte;
  String? numeroRuta;
  String? tarifa;
  String? agencia;
  String? informacionAdicional;
  String? creadoEn;

  RoutesModel(
      {this.id,
        this.ciudad,
        this.tipoTransporte,
        this.numeroRuta,
        this.tarifa,
        this.agencia,
        this.informacionAdicional,
        this.creadoEn});

  RoutesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    ciudad = json['ciudad'];
    tipoTransporte = json['tipo_transporte'];
    numeroRuta = json['numero_ruta'];
    tarifa = json['tarifa'];
    agencia = json['agencia'];
    informacionAdicional = json['informacion_adicional'];
    creadoEn = json['creado_en'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['ciudad'] = this.ciudad;
    data['tipo_transporte'] = this.tipoTransporte;
    data['numero_ruta'] = this.numeroRuta;
    data['tarifa'] = this.tarifa;
    data['agencia'] = this.agencia;
    data['informacion_adicional'] = this.informacionAdicional;
    data['creado_en'] = this.creadoEn;
    return data;
  }
}
