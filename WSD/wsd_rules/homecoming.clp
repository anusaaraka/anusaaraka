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
;;@@@   ---Added by Prachi Rathore
; In these ashrams one has a sense of homecoming.[gayannidhi]
;इन आश्रमों में एक अपने पन का अनुभव होता हैं।
(defrule homecoming0
(declare (salience 5000))
(id-root ?id homecoming)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ? ?id)
(id-root ?id1 ashram)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apane_pana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  homecoming.clp 	homecoming0   "  ?id "  apane_pana )" crlf))
)
;;@@@   ---Added by Prachi Rathore
;I didn't attend a school that featured a homecoming dance or junior prom or any all American john Hughes-type of event.[coca]
(defrule homecoming1
(declare (salience 5000))
(id-root ?id homecoming)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 attend)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id homakamiMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  homecoming.clp 	homecoming1   "  ?id "  homakamiMga )" crlf))
)


;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;;@@@   ---Added by Prachi Rathore
;She spent the day preparing for his homecoming.[oald]
;उसने उसकी घर वापसी के लिये तैयारी करते हुए दिन खर्च किया . 
(defrule homecoming2
(declare (salience 4000))
(id-root ?id homecoming)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gara_vApasI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  homecoming.clp 	homecoming2   "  ?id "  Gara_vApasI )" crlf))
)
