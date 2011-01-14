
(defrule flutter0
(declare (salience 5000))
(id-root ?id flutter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwwejanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flutter.clp 	flutter0   "  ?id "  uwwejanA )" crlf))
)

;"flutter","N","1.uwwejanA"
;He was in a flutter on clearing the hurdle.
;--"2.kampana"
;The sound of the song had a flutter due to long use of the tape.
;--"3.bAjZI_lagAnA"
;He had a flutter at the stock market today.
;
(defrule flutter1
(declare (salience 4900))
(id-root ?id flutter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PadZaPadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flutter.clp 	flutter1   "  ?id "  PadZaPadZA )" crlf))
)

;"flutter","V","1.PadZaPadZAnA"
;This place is so calm that you can even hear the flutter of wings of the birds.
;--"2.havA_meM_hilanA"
;All the flags in the stadium were fluttering in the strong wind.
;--"3.hilAnA"
;The vamp fluttered her eyes coquettishly at the hero in the film.
;--"4.wejZa_raPwAra_se_XadZakanA"
;Due to excitement his heart was fluttering.
;
;LEVEL 
;
;
;Headword : flutter
;
;Examples --
;
;"flutter","V","1.PadZaPadZAnA"
;This place is so calm that you can even hear the flutter of wings of the birds.
;yaha jagaha iwanI SAnwa hE ki wuma cidZiyoM ke paroM kA PadZaPadZAnA BI suna sakawe ho.
;
;--"2.havA meM hilanA"
;All the flags in the stadium were fluttering in the strong wind.
;stediyama meM sAre Jande wejZa havA meM hila rahe We.  havA meM hilanA <-- PadZaPadZAnA 
;
;--"3.hilAnA"
;The vamp fluttered her eyes coquettishly at the hero in the film.
; Pilma meM KalanAyikA hIro para apanI AzKe hilAkara cocalebAjI kara rahI WI. hilanA <--PadZaPadZAnA)
;
;--"4.wejZa raPwAra se XadZakanA"
;Due to excitement his heart was fluttering.
;uwwejanA ke kAraNa usakA xila weja raPwAra se XadZaka rahA WA <--PadZaPadZA rahA WA
;
;"flutter","N","1.GabarAhata"
;He was in a flutter of mind while participating in the hurdle race.
;rukAvata resa meM BAga lewe samaya usakA ximAga GabarAhata kI sWiwi meM WA.GabarAnA <-- XImI 
;gawi se PadZaPadZAnA<--PadZaPadZAnA
;
;--"2.kampana"
;The sound of the song had a flutter due to long use of the tape.
;tepa kA aXika prayoga hone ke kAraNa gAne kI AvAjZa kampana kara rahI WI,(XImI gawi se UwAra
;caDZAva<--hilanA<--PadZaPadZAnA
;
;--"3.bAjZI lagAnA"
;He had a flutter at the stock market today.
;usane Aja satte ke bAjZAra meM bAjZI lagAyI.bAjZI lagAnA<--satte meM uwAra-caDZAva<--hilanA<--PadZaPadZAnA  
;
;nota:-
;uparyukwa samaswa vAkyoMkA( kriyA Ora saMjFA) yaxi viSleRaNa kareM wo 'flutter'Sabxa kA arWa aXikAMSa vAkyoM meM eka hI Sabxa 'PadZaPadZAnA' se nikAlA jA sakawA hE.
;
;sUwra : PadaPadAnA`
;
;
;
;
