import 'package:flutter/material.dart';

import '../../../core/configs/configs.dart';
import '../../../core/helpers/router/router.dart';
import 'onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = "splash";
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{
    late AnimationController _controller;
    late Animation<double> _animation;
    //final HiveRepository _hiveRepository = HiveRepository();
    late bool firstTime;
    
     @override
  void initState() {
    // firstTime = SharedPreferencesManager.getBool(PrefKeys.isFirstTime);
    // printOnlyInDebug("first time $firstTime");
    //_prepareAppState();
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 3000),
      vsync: this,
    );
    _animation = Tween<double>(begin: -300, end: 0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.bounceOut,
      ),
    );
      _controller.forward();
       Future.delayed(const Duration(seconds: 5)).then((value) {
        moveAndClearStack(context: context,  
        page: OnBoardingScreen.routeName);
        //firstTime?OnBoardingScreen.routeName:EnterPinScreen.routeName);
        //OnBoardingScreen.routeName);
      });
      super.initState();
  }
  // _prepareAppState() async {
  //   await HiveRepository.openHives([
  //     BoxKeys.accessToken,
  //     BoxKeys.profileKey,
  //     BoxKeys.currencyKey,
  //     BoxKeys.walletKey,
  //     BoxKeys.transactionInfoKey,
  //     BoxKeys.beneficiaryKey,
  //     BoxKeys.notificationKey,
  //     BoxKeys.internalAccountInfoKey,
  //     BoxKeys.activeWalletId,
  //     BoxKeys.accountTopUPKey,
  //     BoxKeys.walletAddressKey,
  //     BoxKeys.internalPaymentInfoKey,
  //     BoxKeys.payloadKey,
  //     BoxKeys.newPayLoad,
  //     // HiveBoxName.beneficiaries
  //   ]);
  //   String accessToken;
  //   String walletAddress;
  //   int activeWalletId;
  //   Profile userProfile;
  //   List<Currency> currencies;
  //   List<Wallet> wallets;
  //   TransactionInfo transactionsInfo;
  //   BeneficiaryInfo beneficiaryInfo;
  //   NotificationsInfo notificationsInfo;
  //   InternalAccountInfo internalAccountInfo;
  //   TopUpAccount topUpAccountDetails;
  //   Map<String,dynamic> internalPaymentInfoKey;
  //   dynamic payloadKey;
  //   Payload newPayLoad;
  //   try {
  //     accessToken = _hiveRepository.get<String>(
  //         key: BoxKeys.accessToken, name: BoxKeys.accessToken,);
  //     payloadKey = _hiveRepository.get<dynamic>(
  //         key: BoxKeys.payloadKey, name: BoxKeys.payloadKey,);
  //     newPayLoad = _hiveRepository.get<Payload>(
  //         key: BoxKeys.newPayLoad, name: BoxKeys.newPayLoad,);
  //     walletAddress = _hiveRepository.get<String>(
  //         key: BoxKeys.walletAddressKey, name: BoxKeys.walletAddressKey,);
  //     internalPaymentInfoKey = _hiveRepository.get<Map<String,dynamic>>(
  //         key: BoxKeys.internalPaymentInfoKey, name: BoxKeys.internalPaymentInfoKey,);
  //          activeWalletId = _hiveRepository.get<int>(
  //         key: BoxKeys.activeWalletId, name: BoxKeys.activeWalletId,);
  //     userProfile = _hiveRepository.get<Profile>(
  //         key: BoxKeys.profileKey, name: BoxKeys.profileKey,);
  //     currencies = _hiveRepository.get<List<Currency>>(
  //         key: BoxKeys.currencyKey, name: BoxKeys.currencyKey,);
  //     wallets = _hiveRepository.get<List<Wallet>>(
  //         key: BoxKeys.walletKey, name: BoxKeys.walletKey,);
  //     transactionsInfo = _hiveRepository.get<TransactionInfo>(
  //         key: BoxKeys.transactionInfoKey, name: BoxKeys.transactionInfoKey,);
  //     beneficiaryInfo = _hiveRepository.get<BeneficiaryInfo>(
  //         key: BoxKeys.beneficiaryKey, name: BoxKeys.beneficiaryKey,);
  //     notificationsInfo = _hiveRepository.get<NotificationsInfo>(
  //         key: BoxKeys.notificationKey, name: BoxKeys.notificationKey,);
  //     internalAccountInfo = _hiveRepository.get<InternalAccountInfo>(
  //         key: BoxKeys.internalAccountInfoKey, name: BoxKeys.internalAccountInfoKey,);
  //     topUpAccountDetails = _hiveRepository.get<TopUpAccount>(
  //         key: BoxKeys.accountTopUPKey, name: BoxKeys.accountTopUPKey,);
  //     // transactions = _hiveRepository.get<Transaction>(
  //     //     key: HiveBoxName.transactions, name: HiveBoxName.transactions,);
  //     // beneficiary = _hiveRepository.get<Beneficiary>(
  //     //     key: HiveBoxName.beneficiaries, name: HiveBoxName.beneficiaries,);
  //   } catch (e) {}
  // }
 
  @override
  Widget build(BuildContext context) {
    //final deviceSize = MediaQuery.of(context).size;
    return AnimatedBuilder(
      animation: _animation,
      builder: (BuildContext context, Widget? child) {
        return Stack(
          children: [
            Container(
            ),
            Transform.translate(
              offset: Offset(0, _animation.value),
              child: Container(
                alignment: Alignment.center,
                child: Image.asset(AssetsImages.onboarding1, height: 128.dy, width: 109.dx,), // Replace with your image asset
              ),
            ),
          ],
        );
      },
    );
  }
     @override
    void dispose() {
      _controller.dispose();
      super.dispose();
    }
}
