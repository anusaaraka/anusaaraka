;##############################################################################
;#  Copyright (C) 2013-2014 Jagrati Singh (singh.jagriti5@gmail.com)
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
;################################################################
;@@@  Added by Jagriti
; We spent the weekend in Paris.[oald]
;हमने पेरिस में सप्ताहांत बिताया.
;I've spent years trying to learn Japanese.[oald]
;मैंने जापानी सीखने के लिए सालों बिताए है.
;No, we'll spend the night at Chirbas.[gyanidhi-corpus]
;नहीं, हम चिरबास में रात बिताएँगे . 
(defrule spend0
(declare (salience 5000))
(id-root ?id spend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-object ?id ?id1)(kriyA-kAlavAcI ?id ?id1))
(id-root ?id1 time|year|hour|week|month|minute|weekend|holiday|night|life|day)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id biwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spend.clp 	spend0 "  ?id " biwA )" crlf))
)
;@@@ Added by jagriti
; She spends a lot of money on clothes.[oald]
;उसने कपड़ों पर बहुत सारा पैसा खर्च किया.
(defrule spend1
(declare (salience 4900))
(id-root ?id spend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Karca_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spend.clp 	spend1 "  ?id " Karca_kara  )" crlf))
)
