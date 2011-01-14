
(defrule private0
(declare (salience 5000))
(id-root ?id private)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nijI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  private.clp 	private0   "  ?id "  nijI )" crlf))
)

(defrule private1
(declare (salience 4900))
(id-root ?id private)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyakwigawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  private.clp 	private1   "  ?id "  vyakwigawa )" crlf))
)

;"private","Adj","1.vyakwigawa"
;A private letter was sent to the publisher for demanding the money.
;--"2.sAXAraNa"
;He revealed private chat with his boss, to others.
;--"3.gopanIya"
;Don't be a private citizen of the country, achieve something.
;--"4.gZEra sarakArI"
;Private Industries are given a boon in the present cental budget.
;
;LEVEL 
;Headword  : private
;
;Examples --
;"private","Adj","1.vyakwigawa"
;Those people tried to encroach upon private land.
;una logoM ne vyakwigawa jZamIna para anaXikAra praveSa karane kI koSiSa kI.
;--"2.gopanIya<--vyakwigawa
;He revealed even private matters to the authorities.
;usane gopanIya bAweM BI aXikAriyoM ko bawA xI.
;--3. gEra_sarakArI"<--nijI_uxyama <--vyakwigawa
;He has got a job in a private company
;use gEra-sarakArI kampanI meM nOkarI milI hE
;
;"private","N",sAXAraNa"<--vyakwigawa
;He is recruited as a private soldier
;use sAXAraNa sEnika ke rUpa meM BarwI kiyA gayA
;
;commentary : adj.[ME.Pryvat<L.privatus,belonging to oneself <privare,
;to separate,deprive <privus,separate ]
;
;vyAKyA : uparyukwa aMkiwa Sabxa `private' ke Binna laganevAle saBI arWoM kA 
;mUlArWa eka hI nikalawA hE, jo hE `vyakwigawa'. 
;isakA sUwra hama isa prakAra xe sakawe hEM.
;      
;
;anwarnihiwa_sUwra ;
;                       vyakwigawa   
;                          |
;                      |------|
;                   gopanIya    gEra_sarakArI
;
;
;sUwra : vyakwigawa[>gEra_sarakArI]
