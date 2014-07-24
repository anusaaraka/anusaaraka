;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005@gmail.com)
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
;@@@
;Look at the snow-capped peaks, he said excitedly.
;बर्फ से ढकी चोटियों को देखो ,उसने उत्साहित हो कर कहा.
(defrule excitedly0
(declare (salience 5000))
(id-root ?id excitedly)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?id1 ?id)
(kriyA-vAkyakarma  ?id1 ?id2)
(AjFArWaka_kriyA  ?id2)
(id-root ?id2 look)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwsAhiwa_ho_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  excitedly.clp 	excitedly0   "  ?id "  uwsAhiwa_ho_kara )" crlf))
)

;@@@
;She ran excitedly down the hall to greet her cousins.             ;oald
;वह अपने चचेरे भाई  का अभिवादन करने के लिए नीचे हॉल में उत्तेजित हो कर भागी.
(defrule excitedly1
(declare (salience 4000))
(id-root ?id excitedly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwwejiwa_ho_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  excitedly.clp 	excitedly1   "  ?id " uwwejiwa_ho_kara  )" crlf))
)
