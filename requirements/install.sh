#!/bin/bash
#
# Newfies-Dialer License
# http://www.newfies-dialer.org
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this file,
# You can obtain one at http://mozilla.org/MPL/2.0/.
#
# Copyright (C) 2011-2015 Star2Billing S.L.
#
# The primary maintainer of this project is
# Arezqui Belaid <info@star2billing.com>
#

echo "Install basic requirements..."
for line in $(cat requirements/py3-basic.txt | grep -v \#)
do
    pip install $line
done

echo "Install Django requirements..."
for line in $(cat requirements/py3-django.txt | grep -v \#)
do
    pip install $line --use-mirrors django-admin-tools
done

echo "Install Dev requirements..."
for line in $(cat requirements/dev.txt | grep -v \#)
do
    pip install $line
done

echo "Install test requirements..."
for line in $(cat requirements/test.txt | grep -v \#)
do
    pip install $line --use-mirrors
done
