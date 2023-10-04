import 'controllers/bank_controller.dart';
import 'models/account.dart';

void main(){

  //Criandoo banco
  BankController bankController = BankController();

  //Adicionando contas
  bankController.addAccount(id: 'Sinx', account: Account(name: 'Sinx Stars', balance: 2000, isAuthenticated: true));
  bankController.addAccount(id: 'Honey', account: Account(name: 'Honey Bunny', balance: 1000, isAuthenticated: true));

  //Fazendo transferência
 bool result = bankController.makeTransfer(idSender: 'Sinx', idReceiver: 'Honey', ammount: 100);

  //observando resultado
  print(result);

}

