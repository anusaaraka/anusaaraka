
(defrule abstract0
(declare (salience 5000))
(id-root ?id abstract)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id abstracted )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id anyamanaska))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  abstract.clp  	abstract0   "  ?id "  anyamanaska )" crlf))
)

;"abstracted","Adj","1.anyamanaska"
;He gave an abstracted smile.
;
;Added by human
(defrule abstract1
(declare (salience 4900))
(id-root ?id abstract)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  abstract.clp 	abstract1   "  ?id "  sAra )" crlf))
)

(defrule abstract2
(declare (salience 4800))
(id-root ?id abstract)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id amUrwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  abstract.clp 	abstract2   "  ?id "  amUrwa )" crlf))
)

(defrule abstract3
(declare (salience 4700))
(id-root ?id abstract)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alaga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  abstract.clp 	abstract3   "  ?id "  alaga_kara )" crlf))
)

;default_sense && category=verb	hatA_le	0
;"abstract","V","1.hatA_lenA"
;Two other points must be abstracted to the lecture.
;--"2.saMkRipwa_banAnA/saMkRepa_karanA"
;Most of the famous novels are abstracted.
;
;
;LEVEL 
;
;
;Headword : abstract
;
;Examples --
;
;"abstract","N","1.sArAMSa" 
;This book is an abstract of Ramayana.
;yaha puswaka rAmAyaNa kA sAra hE.
;--"2.amUrwawA" 
;You need to go to abstracts to understand certain phenomena.
;kuCa cIjZo mo samaJane ke liye Apako amUrwawA waka jAnA padZegA.
;--"3.amUrwa_BAva"
;He is a painter of abstracts.
;vaha amUrwa BAvoM ko aBivyakwa karawA hE.
;
;"abstract","Adj","1.amUrwa" <--- BAva 
;It is an abstract painting.
;yaha eka amUrwa BAvABiyakwi kA ciwra hE.
;
;--"2.nirAkAra"<--amUrwa   
;Beauty && love are abstract.
;sOnxarya Ora pyAra amUrwa howe hEM.
;
;--"3.sAmAnya"<--jo sabameM samAna <--jisakA sAra samAna hE
;He has an abstract notion to change the nation.
;
;"abstract","V","1.hatA_lenA"<--bekAra waWyoM ko nikAla xenA<--mUla bAwa waka pahuzcanA<--sAra nikAlanA
;Two other points must be abstracted from the lecture.
;
;--"2.saMkRipwa_banAnA/saMkRepa_karanA"<--sArAwaMSa
;Most of the famous novels are abstracted.
;
;nota:-- "abstract",Sabxa ke liye uparyukwa saBI vAkyoM,saMjFA,viSeRaNa,va kriyA kA
; nirIkRaNa karane para ina samaswa vAkyoM kA mUla arWa amUrwa Ora sArAMSa se nikAla sakawe  
;hEM. isameM nimna arWa milawe hEM ; 
;
;aMwarnihiwa sUwra ; 
;
;amUrwa-avyakwa  -- sAmAnya -BAva --sArAMSa
;
;awaH isake liye upayukwa sUwra nimna prakAra xe sakawe hEM
;
;sUwra : amUrwa[>sArAMSa]
; 
;
