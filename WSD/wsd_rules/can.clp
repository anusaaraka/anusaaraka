
(defrule can0
(declare (salience 5000))
(id-root ?id can)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) the)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kEna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  can.clp 	can0   "  ?id "  kEna )" crlf))
)

(defrule can1
(declare (salience 4900))
(id-root ?id can)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kEna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  can.clp 	can1   "  ?id "  kEna )" crlf))
)

(defrule can2
(declare (salience 4800))
(id-root ?id can)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  can.clp 	can2   "  ?id "  saka )" crlf))
)

(defrule can3
(declare (salience 4700))
(id-root ?id can)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  can.clp 	can3   "  ?id "  saka )" crlf))
)

;default_sense && category=verb	saka	0
;"can","V","1.sakanA"
;I can do any work.
;--"2.kEna_meM_raKanA"
;He has a factory where pickles are canned.
;
;
;LEVEL 
;HEADWORD : "can"
;
;Examples --
;
;1. I can cook well.
;mEM TIka pakA sakawA hUz.
;2. Can you smell something good ?
;wumheM koI acCI cIjZa kI ganXa A rahI hE ?
;3. We can eat food in here.
;hama yahAz KAnA KA sakawe hEM.
;4. I need to buy a can of petrol.
;muJe perola kEna KarIxane kI jZarUrawa hE.
;5. He bought me a can of beer.
;usane mere lie biyara kA eka kEna KarIxA.
;6. Can the juice before it spoils.
;rasa bigada jAne se pahale kEna kara xo.
;7. I'd prefer to eat seasonal fruits to canned fruits.
;mEM kEna kie hue Pala se, qwuniRta Pala KAnA jyAxA pasaMxa karuzgI. 
;
;uparaliKiwa vAkyoM meM 1-3 vAkyoM meM "can" Sabxa kA prayoga kuCa karane kI yogyawA, 
;arWAw kuCa kara "sakane" ke arWa meM howA hE. yahAz "can" eka sahAyaka-kriyA hE.
;
;4 Ora 5 vAkyoM meM "can" kA prayoga "dibbA","kEna" ke arWa meM ho rahA hE, arWAw
;yahAz "can" eka saMjFA hE.
;
;vAkya 6 meM "can" kA prayoga kriyA ke arWa meM ho rahA hE. yahAz usakA arWa ho rahA hE "kEna yA dibbe meM baMxa karanA"
;
;vAkya 7 meM "can" kA arWa "kEna kiyA huA" arWAw, viReSaNa ke rUpa meM prayoga ho rahA hE.
;
;awaH hameM yahAz 'can' ke xo asambaxXa arWa mila rahe hEM
;'sakanA'{sahAyaka kriyA} Ora 'kEna'{dibbA}.
; 
;inameM 'sakanA' prAyaH eka hI arWa meM prayukwa howA hE kinwu 'kEna' kA saMjFAprayoga kriyAprayoga Ora viSeRaNaprayoga BI howA hE.
;jisase isakA anwarnihiwa sUwra hogA ;
;
;kEna-kEna_meM_baMxa_karanA- kEna_meM_baMxa_kiyA_huA
;
;aba hama "can" kA sUwra isa prakAra xe sakawe hEM -
;
;sUwra : sakanA/kEna`
