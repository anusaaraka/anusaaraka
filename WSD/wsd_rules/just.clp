
;Added by human
(defrule just0
(declare (salience 5000))
(id-root ?id just)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) has)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  just.clp 	just0   "  ?id "  aBI )" crlf))
)

(defrule just1
(declare (salience 4900))
(id-root ?id just)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) had)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  just.clp 	just1   "  ?id "  aBI )" crlf))
)

(defrule just2
(declare (salience 4800))
(id-root ?id just)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) have)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  just.clp 	just2   "  ?id "  aBI )" crlf))
)

; He has just gone home

;$$$        --- Modified by Prachi Rathore
;Meaning changesd from kevala to -
;She looks just like her mother.[oald]
;वह उसकी माँ की तरह दिखती है . 

(defrule just3
(declare (salience 4700))
(id-root ?id just)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) like)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  just.clp 	just3   "  ?id "  - )" crlf))
)

(defrule just4
(declare (salience 4600))
(id-root ?id just)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jZarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  just.clp 	just4   "  ?id "  jZarA )" crlf))
)

; But just see how difficult it is.



;Added by Meena(19.2.11)
;Mysore also known as the city of palaces is just 139 kms by road from Bangalore.
(defrule just05
(declare (salience 4600))
(id-root ?id just)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-viSeRaNa ?id1 ?id)(viSeRya-viSeRaka  ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sirPa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  just.clp      just05   "  ?id " sirPa 
 )" crlf))
)



(defrule just5
(declare (salience 4500))
(id-root ?id just)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  just.clp 	just5   "  ?id "  TIka )" crlf))
)

(defrule just6
(declare (salience 4400))
(id-root ?id just)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  just.clp 	just6   "  ?id "  mAwra )" crlf))
)

(defrule just7
(declare (salience 4300))
(id-root ?id just)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  just.clp 	just7   "  ?id "  TIka )" crlf))
)

;@@@   ---Added by Prachi Rathore[11-12-13]
;The path was narrow, just wide enough for walking.[gayannidhi]
;-रास्ता संकरा था, पर चलने के लिए काफी था।
(defrule just8
(declare (salience 4400))
(id-root ?id just)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
(kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  just.clp 	just8   "  ?id "  para )" crlf))
)

;@@@ Added by Prachi Rathore 2-1-14
;Here there was just an ordinary rural household.[bade ghar ki beti]
;यहाँ बस एक साधारण ग्रामीण परिवार  था . 
(defrule just9
(declare (salience 4500))
(id-root ?id just)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
(kriyA-kriyA_viSeRaNa  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id basa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  just.clp 	just9   "  ?id "  basa)" crlf))
)


;@@@ Added by Prachi Rathore[17-1-14]
;The cottage is just steps from the beach. 
;कुटी समुद्रतट से सिर्फ कुछ कदम दूर/पर है . 
(defrule just10
(declare (salience 5000))
(id-root ?id just)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaka  ?id1 ?id)
(id-root ?id1 step)
(viSeRya-from_saMbanXI  ?id1 ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sirPa_kuCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  just.clp      just10   "  ?id " sirPa_kuCa
 )" crlf))
)


;"just","Adv","1.TIka"
;This blouse is just my size.
;--"2.vEsA_hI"
;This is just the colour I wanted for my car.
;--"3.bilkula"
;My brother is just the opposite of me in behaviour.
;--"4.aBI/isI_vakwa"
;I have just completed my home work.
;--"5.uwanA_hI"
;He is just as intelligent as his brother.
;
;
;just=TIka`
;
;??King Dashrath was a just && honourable ruler.
;rAjA xaSaraWa eka nyAyI (TIka) Ora AxaraNIya SAsaka We.
;
;This coat is just my size.
;yaha kota TIka mere nApa kA hE.
;
;He came just in time for dinner.
;vaha TIka rAwriBojana ke samaya AyA.
;
;I just came here to see grandmother.
;mEM mAwAjI ko xeKane[milane] hI AyA huz.- (TIka usI kAma ke liye Ora kuCa nahIM)
;
;There is just one way to reach the station.
;steSana pahuzcane kA eka hI mArga hE.- (eka hI mArga hE Ora aXika/anya mArga nahIM)
;
;Just listen to what I am saying.
;kevala suno mEM kyA kaha rahA huz.- ( aXika wuma kuCa mawa kaho, TIka vahI kAma karo jo 
;mEM kaha rahA huz)
;
;He just missed the train.
;jarA se usakI gAdZI cUka gayI.- (kevala Wode hI samaya se,aXika nahIM) 
;
;I just finished reading the book.
;mEM ne aBI-aBI kiwAba paDZa ke pUrNa kI.- (kevala Wode samaya pahale usa ke bAxa koI 
;lakRaNIya samaya nahIM bIwA hE.)
;
;The play was just wonderful.
;nAtaka vAkaI suMxara WA.-(bilakula jEse cAhIye WA vEsA,na kama na jyAxA,TIka uwanA hI)
;
;I will try to call him, he might just be home.
;mEM use Pona karane kI koSiSa karawA huz, SAyaxa vaha Gara hogA.- (might,can,could ke sAWa
;grouping.yahAz just, 'saMBAvanA' ko aXika sabala banAwA hE) 
;
;
;Just Sabxa kA deep level pe vicAra kiyA jAye wo usakA arWa hE 'TIka"/aXika nahIM.
;hiMxI meM 'TIka' Sabxa BI ambigious hE.usake xo arWa hE -vyavasWiwa yA basa_uwanA_hI  
;uxA.
;1.mEM ne kIwAbeM mejZa para TIka waraha se raKIM.- vyavasWiwa.
;2.mEM TIka 4 baje Gara jAuzgA.- basa_uwanA_hI,na kama na jyAxA. 
;yahAz hama uxA. 2 kI bAwa kara rahe hE.
;just Sabxa ke surface level para alaga alaga realisations xiKAI xewe hE.uparaliKiwa saBI 
;vAkyoM meM just Sabxa kA alaga alaga prayoga najZara A rahA hE.magara deep level para 
;'TIka' hI arWa xiKAI xewA hE. hara vAkya ke aMwa meM usakA viSleRaNa xiyA gayA
;hE.        
