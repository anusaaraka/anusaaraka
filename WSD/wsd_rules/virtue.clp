;##############################################################################
;#  Copyright (C) 2013-2014  Prachi Rathore (prachirathore02@gmail.com)
;#
;#  This program is free software; you can redistribute it and/or
;#  modify it under the terms of the GNU General Public License
;#  as published by the Free Software Foundation; either
;#  version 2 of the License, or (at your option) any later
;#  version.
;#
;#  This program is distributed in the hope that it will be useful,
;#  but WITHOUT ANY WARRANTY; without even the implied warranty of
;#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;#  GNU General Public License for more details.
;#
;#  You should have received a copy of the GNU General Public License
;#  along with this program; if not, write to the Free Software
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;
;##############################################################################
;@@@ Added by Prachi Rathore[19-3-14]
;As a politician, he always emphasized the virtues of compromise and conciliation. The
;राजनीतिज्ञ की तरह, उसने हमेशा समझौते और सुलह के फायदे पर जोर दिया. 
;Would there be any virtue in taking an earlier train? 
;क्या  पहले वाली रेलगाडी लेने में कोई फायदा होगा? 
(defrule virtue0
(declare (salience 5000))
(id-root ?id virtue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-in_saMbanXI ?id ?id1)(viSeRya-of_saMbanXI ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PAyaxA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  virtue.clp 	virtue0   "  ?id "  PAyaxA )" crlf)
)
)


;@@@ Added by Prachi Rathore[19-3-14]
; He led a life of virtue.
;उसने नैतिकता का जीवन बिताया .
;She was certainly no paragon of virtue!
;वह निश्चित रूप से नैतिकता का आदर्श नहीं थी!  
(defrule virtue3
(declare (salience 5100))
(id-root ?id virtue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-of_saMbanXI ?id ?id1)(viSeRya-of_saMbanXI ?id1 ?id))
(id-root ?id1 life|paragon)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nEwikawA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  virtue.clp 	virtue3   "  ?id " nEwikawA)" crlf)
)
)

;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[19-3-14]
; Patience is not one of her virtues, I'm afraid. 
;धीरज उसका गुण नहीं है, मैं चिन्तित हूँ . 
(defrule virtue1
(declare (salience 400))
(id-root ?id virtue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id guNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  virtue.clp 	virtue1   "  ?id "  guNa )" crlf))
)

;@@@ Added by Prachi Rathore[19-3-14]

(defrule virtue2
(declare (salience 200))
(id-root ?id virtue)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id guNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  virtue.clp 	virtue2   "  ?id "  guNa)" crlf))
)
