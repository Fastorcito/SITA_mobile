class RoutesDetailModel {
  int? id;
  String? ciudad;
  String? tipoTransporte;
  String? numeroRuta;
  String? tarifa;
  String? agencia;
  String? informacionAdicional;
  String? creadoEn;
  String? diasOperacion;
  String? horario;
  String? direccion;
  String? itinerario;

  RoutesDetailModel(
      {this.id,
        this.ciudad,
        this.tipoTransporte,
        this.numeroRuta,
        this.tarifa,
        this.agencia,
        this.informacionAdicional,
        this.creadoEn,
        this.diasOperacion,
        this.horario,
        this.direccion,
        this.itinerario});

  RoutesDetailModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    ciudad = json['ciudad'];
    tipoTransporte = json['tipo_transporte'];
    numeroRuta = json['numero_ruta'];
    tarifa = json['tarifa'];
    agencia = json['agencia'];
    informacionAdicional = json['informacion_adicional'];
    creadoEn = json['creado_en'];
    diasOperacion = json['dias_operacion'];
    horario = json['horario'];
    direccion = json['direccion'];
    itinerario = json['itinerario'];
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
    data['dias_operacion'] = this.diasOperacion;
    data['horario'] = this.horario;
    data['direccion'] = this.direccion;
    data['itinerario'] = this.itinerario;
    return data;
  }
}