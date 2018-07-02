// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Raw data for the animation demo.

import 'package:flutter/material.dart';

const Color _mariner = const Color(0xFF3B5F8F);
const Color _mediumPurple = const Color(0xFF8266D4);
const Color _tomato = const Color(0xFFF95B57);
const Color _mySin = const Color(0xFFF3A646);

const String _kGalleryAssetsPackage = 'flutter_gallery_assets';

class SectionDetail {
  const SectionDetail({
    this.leading,
    this.title,
    this.subtitle,
  });

  final String leading;
  final String title;
  final String subtitle;
}

class Section {
  const Section({
    this.title,
    this.leftColor,
    this.rightColor,
  });

  final String title;
  final Color leftColor;
  final Color rightColor;

  @override
  bool operator ==(Object other) {
    if (other is! Section) return false;
    final Section otherSection = other;
    return title == otherSection.title;
  }

  @override
  int get hashCode => title.hashCode;
}

// TODO(hansmuller): replace the SectionDetail images and text. Get rid of
// the const vars like _eyeglassesDetail and insert a variety of titles and
// image SectionDetails in the allSections list.

final List<Section> allSections = <Section>[
  const Section(
    title: 'page1',
    leftColor: _mediumPurple,
    rightColor: _mariner,
  ),
  const Section(
    title: 'page2',
    leftColor: _tomato,
    rightColor: _mediumPurple,
  ),
  const Section(
    title: 'page3',
    leftColor: _mySin,
    rightColor: _tomato,
  ),
  const Section(
    title: 'page4',
    leftColor: Colors.white,
    rightColor: _tomato,
  ),
];
