import 'package:supabase_flutter/supabase_flutter.dart';

void supaclient() async {
  await Supabase.initialize(
    url: 'YOUR_SUPABASE_URL',
    anonKey: 'YOUR_SUPABASE_ANON_KEY',
  );
}
