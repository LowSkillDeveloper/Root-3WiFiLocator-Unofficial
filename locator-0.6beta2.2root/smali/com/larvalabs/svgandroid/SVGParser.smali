.class public Lcom/larvalabs/svgandroid/SVGParser;
.super Ljava/lang/Object;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/larvalabs/svgandroid/SVGParser$Builder;,
        Lcom/larvalabs/svgandroid/SVGParser$CopyInputStream;,
        Lcom/larvalabs/svgandroid/SVGParser$Gradient;,
        Lcom/larvalabs/svgandroid/SVGParser$IDHandler;,
        Lcom/larvalabs/svgandroid/SVGParser$NumberParse;,
        Lcom/larvalabs/svgandroid/SVGParser$Properties;,
        Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;,
        Lcom/larvalabs/svgandroid/SVGParser$StyleSet;
    }
.end annotation


# static fields
.field static DPI:F = 0.0f

.field static final TAG:Ljava/lang/String; = "SVG"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const/high16 v0, 0x42900000    # 72.0f

    sput v0, Lcom/larvalabs/svgandroid/SVGParser;->DPI:F

    .line 91
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/io/InputStream;Ljava/lang/Integer;Ljava/lang/Integer;ZZF)Lcom/larvalabs/svgandroid/SVG;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/larvalabs/svgandroid/SVGParseException;
        }
    .end annotation

    .prologue
    .line 313
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-static/range {v6 .. v11}, Lcom/larvalabs/svgandroid/SVGParser;->parse(Ljava/io/InputStream;Ljava/lang/Integer;Ljava/lang/Integer;ZZF)Lcom/larvalabs/svgandroid/SVG;

    move-result-object v6

    move-object v0, v6

    return-object v0
.end method

.method static synthetic access$1(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 857
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/larvalabs/svgandroid/SVGParser;->getStringAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$2(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 357
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/larvalabs/svgandroid/SVGParser;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$3(Ljava/lang/String;)Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 451
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/larvalabs/svgandroid/SVGParser;->parseTransform(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$4(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/larvalabs/svgandroid/SVGParser$NumberParse;
    .locals 4

    .prologue
    .line 847
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/larvalabs/svgandroid/SVGParser;->getNumberParseAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/larvalabs/svgandroid/SVGParser$NumberParse;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$5(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 2

    .prologue
    .line 562
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/larvalabs/svgandroid/SVGParser;->doPath(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private static doPath(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 42

    .prologue
    .line 563
    move-object/from16 v2, p0

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v3, v23

    .line 564
    new-instance v23, Lcom/larvalabs/svgandroid/ParserHelper;

    move-object/from16 v41, v23

    move-object/from16 v23, v41

    move-object/from16 v24, v41

    move-object/from16 v25, v2

    const/16 v26, 0x0

    invoke-direct/range {v24 .. v26}, Lcom/larvalabs/svgandroid/ParserHelper;-><init>(Ljava/lang/CharSequence;I)V

    move-object/from16 v4, v23

    .line 565
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/larvalabs/svgandroid/ParserHelper;->skipWhitespace()V

    .line 566
    new-instance v23, Landroid/graphics/Path;

    move-object/from16 v41, v23

    move-object/from16 v23, v41

    move-object/from16 v24, v41

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v5, v23

    .line 567
    const/16 v23, 0x0

    move/from16 v6, v23

    .line 568
    const/16 v23, 0x0

    move/from16 v7, v23

    .line 569
    const/16 v23, 0x0

    move/from16 v8, v23

    .line 570
    const/16 v23, 0x0

    move/from16 v9, v23

    .line 571
    const/16 v23, 0x0

    move/from16 v10, v23

    .line 572
    const/16 v23, 0x0

    move/from16 v11, v23

    .line 573
    new-instance v23, Landroid/graphics/RectF;

    move-object/from16 v41, v23

    move-object/from16 v23, v41

    move-object/from16 v24, v41

    invoke-direct/range {v24 .. v24}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v12, v23

    .line 574
    const/16 v23, 0x78

    move/from16 v13, v23

    .line 575
    :goto_0
    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget v0, v0, Lcom/larvalabs/svgandroid/ParserHelper;->pos:I

    move/from16 v23, v0

    move/from16 v24, v3

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_0

    .line 768
    move-object/from16 v23, v5

    move-object/from16 v2, v23

    return-object v2

    .line 576
    :cond_0
    move-object/from16 v23, v2

    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget v0, v0, Lcom/larvalabs/svgandroid/ParserHelper;->pos:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->charAt(I)C

    move-result v23

    move/from16 v14, v23

    .line 577
    move/from16 v23, v14

    invoke-static/range {v23 .. v23}, Ljava/lang/Character;->isDigit(C)Z

    move-result v23

    if-nez v23, :cond_3

    move/from16 v23, v14

    const/16 v24, 0x2e

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    move/from16 v23, v14

    const/16 v24, 0x2d

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    .line 578
    move/from16 v23, v14

    move/from16 v13, v23

    .line 579
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/larvalabs/svgandroid/ParserHelper;->advance()V

    .line 587
    :cond_1
    :goto_1
    move-object/from16 v23, v5

    move-object/from16 v24, v12

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 590
    const/16 v23, 0x0

    move/from16 v15, v23

    .line 591
    move/from16 v23, v13

    sparse-switch v23, :sswitch_data_0

    .line 759
    const-string v23, "SVG"

    new-instance v24, Ljava/lang/StringBuilder;

    move-object/from16 v41, v24

    move-object/from16 v24, v41

    move-object/from16 v25, v41

    const-string v26, "Invalid path command: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v25, v13

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    .line 760
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/larvalabs/svgandroid/ParserHelper;->advance()V

    .line 762
    :goto_2
    move/from16 v23, v15

    if-nez v23, :cond_2

    .line 763
    move/from16 v23, v6

    move/from16 v8, v23

    .line 764
    move/from16 v23, v7

    move/from16 v9, v23

    .line 766
    :cond_2
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/larvalabs/svgandroid/ParserHelper;->skipWhitespace()V

    goto/16 :goto_0

    .line 580
    :cond_3
    move/from16 v23, v13

    const/16 v24, 0x4d

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 581
    const/16 v23, 0x4c

    move/from16 v13, v23

    goto :goto_1

    .line 582
    :cond_4
    move/from16 v23, v13

    const/16 v24, 0x6d

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 583
    const/16 v23, 0x6c

    move/from16 v13, v23

    goto :goto_1

    .line 594
    :sswitch_0
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/larvalabs/svgandroid/ParserHelper;->nextFloat()F

    move-result v23

    move/from16 v16, v23

    .line 595
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/larvalabs/svgandroid/ParserHelper;->nextFloat()F

    move-result v23

    move/from16 v17, v23

    .line 596
    move/from16 v23, v13

    const/16 v24, 0x6d

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 597
    move-object/from16 v23, v5

    move/from16 v24, v16

    move/from16 v25, v17

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 598
    move/from16 v23, v6

    move/from16 v24, v16

    add-float v23, v23, v24

    move/from16 v6, v23

    .line 599
    move/from16 v23, v7

    move/from16 v24, v17

    add-float v23, v23, v24

    move/from16 v7, v23

    .line 605
    :goto_3
    move/from16 v23, v6

    move/from16 v10, v23

    .line 606
    move/from16 v23, v7

    move/from16 v11, v23

    .line 607
    goto :goto_2

    .line 601
    :cond_5
    move-object/from16 v23, v5

    move/from16 v24, v16

    move/from16 v25, v17

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/Path;->moveTo(FF)V

    .line 602
    move/from16 v23, v16

    move/from16 v6, v23

    .line 603
    move/from16 v23, v17

    move/from16 v7, v23

    goto :goto_3

    .line 612
    :sswitch_1
    move-object/from16 v23, v5

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Path;->close()V

    .line 613
    move/from16 v23, v10

    move/from16 v6, v23

    .line 614
    move/from16 v23, v11

    move/from16 v7, v23

    .line 615
    goto/16 :goto_2

    .line 619
    :sswitch_2
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/larvalabs/svgandroid/ParserHelper;->nextFloat()F

    move-result v23

    move/from16 v16, v23

    .line 620
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/larvalabs/svgandroid/ParserHelper;->nextFloat()F

    move-result v23

    move/from16 v17, v23

    .line 621
    move/from16 v23, v13

    const/16 v24, 0x6c

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 622
    move-object/from16 v23, v5

    move/from16 v24, v16

    move/from16 v25, v17

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 623
    move/from16 v23, v6

    move/from16 v24, v16

    add-float v23, v23, v24

    move/from16 v6, v23

    .line 624
    move/from16 v23, v7

    move/from16 v24, v17

    add-float v23, v23, v24

    move/from16 v7, v23

    goto/16 :goto_2

    .line 626
    :cond_6
    move-object/from16 v23, v5

    move/from16 v24, v16

    move/from16 v25, v17

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/Path;->lineTo(FF)V

    .line 627
    move/from16 v23, v16

    move/from16 v6, v23

    .line 628
    move/from16 v23, v17

    move/from16 v7, v23

    .line 630
    goto/16 :goto_2

    .line 634
    :sswitch_3
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/larvalabs/svgandroid/ParserHelper;->nextFloat()F

    move-result v23

    move/from16 v16, v23

    .line 635
    move/from16 v23, v13

    const/16 v24, 0x68

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 636
    move-object/from16 v23, v5

    move/from16 v24, v16

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 637
    move/from16 v23, v6

    move/from16 v24, v16

    add-float v23, v23, v24

    move/from16 v6, v23

    goto/16 :goto_2

    .line 639
    :cond_7
    move-object/from16 v23, v5

    move/from16 v24, v16

    move/from16 v25, v7

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/Path;->lineTo(FF)V

    .line 640
    move/from16 v23, v16

    move/from16 v6, v23

    .line 642
    goto/16 :goto_2

    .line 646
    :sswitch_4
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/larvalabs/svgandroid/ParserHelper;->nextFloat()F

    move-result v23

    move/from16 v16, v23

    .line 647
    move/from16 v23, v13

    const/16 v24, 0x76

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 648
    move-object/from16 v23, v5

    const/16 v24, 0x0

    move/from16 v25, v16

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 649
    move/from16 v23, v7

    move/from16 v24, v16

    add-float v23, v23, v24

    move/from16 v7, v23

    goto/16 :goto_2

    .line 651
    :cond_8
    move-object/from16 v23, v5

    move/from16 v24, v6

    move/from16 v25, v16

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/Path;->lineTo(FF)V

    .line 652
    move/from16 v23, v16

    move/from16 v7, v23

    .line 654
    goto/16 :goto_2

    .line 658
    :sswitch_5
    const/16 v23, 0x1

    move/from16 v15, v23

    .line 659
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/larvalabs/svgandroid/ParserHelper;->nextFloat()F

    move-result v23

    move/from16 v16, v23

    .line 660
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/larvalabs/svgandroid/ParserHelper;->nextFloat()F

    move-result v23

    move/from16 v17, v23

    .line 661
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/larvalabs/svgandroid/ParserHelper;->nextFloat()F

    move-result v23

    move/from16 v18, v23

    .line 662
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/larvalabs/svgandroid/ParserHelper;->nextFloat()F

    move-result v23

    move/from16 v19, v23

    .line 663
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/larvalabs/svgandroid/ParserHelper;->nextFloat()F

    move-result v23

    move/from16 v20, v23

    .line 664
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/larvalabs/svgandroid/ParserHelper;->nextFloat()F

    move-result v23

    move/from16 v21, v23

    .line 665
    move/from16 v23, v13

    const/16 v24, 0x63

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 666
    move/from16 v23, v16

    move/from16 v24, v6

    add-float v23, v23, v24

    move/from16 v16, v23

    .line 667
    move/from16 v23, v18

    move/from16 v24, v6

    add-float v23, v23, v24

    move/from16 v18, v23

    .line 668
    move/from16 v23, v20

    move/from16 v24, v6

    add-float v23, v23, v24

    move/from16 v20, v23

    .line 669
    move/from16 v23, v17

    move/from16 v24, v7

    add-float v23, v23, v24

    move/from16 v17, v23

    .line 670
    move/from16 v23, v19

    move/from16 v24, v7

    add-float v23, v23, v24

    move/from16 v19, v23

    .line 671
    move/from16 v23, v21

    move/from16 v24, v7

    add-float v23, v23, v24

    move/from16 v21, v23

    .line 673
    :cond_9
    move-object/from16 v23, v5

    move/from16 v24, v16

    move/from16 v25, v17

    move/from16 v26, v18

    move/from16 v27, v19

    move/from16 v28, v20

    move/from16 v29, v21

    invoke-virtual/range {v23 .. v29}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 674
    move/from16 v23, v18

    move/from16 v8, v23

    .line 675
    move/from16 v23, v19

    move/from16 v9, v23

    .line 676
    move/from16 v23, v20

    move/from16 v6, v23

    .line 677
    move/from16 v23, v21

    move/from16 v7, v23

    .line 678
    goto/16 :goto_2

    .line 682
    :sswitch_6
    const/16 v23, 0x1

    move/from16 v15, v23

    .line 683
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/larvalabs/svgandroid/ParserHelper;->nextFloat()F

    move-result v23

    move/from16 v16, v23

    .line 684
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/larvalabs/svgandroid/ParserHelper;->nextFloat()F

    move-result v23

    move/from16 v17, v23

    .line 685
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/larvalabs/svgandroid/ParserHelper;->nextFloat()F

    move-result v23

    move/from16 v18, v23

    .line 686
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/larvalabs/svgandroid/ParserHelper;->nextFloat()F

    move-result v23

    move/from16 v19, v23

    .line 687
    move/from16 v23, v13

    const/16 v24, 0x73

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 688
    move/from16 v23, v16

    move/from16 v24, v6

    add-float v23, v23, v24

    move/from16 v16, v23

    .line 689
    move/from16 v23, v18

    move/from16 v24, v6

    add-float v23, v23, v24

    move/from16 v18, v23

    .line 690
    move/from16 v23, v17

    move/from16 v24, v7

    add-float v23, v23, v24

    move/from16 v17, v23

    .line 691
    move/from16 v23, v19

    move/from16 v24, v7

    add-float v23, v23, v24

    move/from16 v19, v23

    .line 693
    :cond_a
    const/high16 v23, 0x40000000    # 2.0f

    move/from16 v24, v6

    mul-float v23, v23, v24

    move/from16 v24, v8

    sub-float v23, v23, v24

    move/from16 v20, v23

    .line 694
    const/high16 v23, 0x40000000    # 2.0f

    move/from16 v24, v7

    mul-float v23, v23, v24

    move/from16 v24, v9

    sub-float v23, v23, v24

    move/from16 v21, v23

    .line 695
    move-object/from16 v23, v5

    move/from16 v24, v20

    move/from16 v25, v21

    move/from16 v26, v16

    move/from16 v27, v17

    move/from16 v28, v18

    move/from16 v29, v19

    invoke-virtual/range {v23 .. v29}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 696
    move/from16 v23, v16

    move/from16 v8, v23

    .line 697
    move/from16 v23, v17

    move/from16 v9, v23

    .line 698
    move/from16 v23, v18

    move/from16 v6, v23

    .line 699
    move/from16 v23, v19

    move/from16 v7, v23

    .line 700
    goto/16 :goto_2

    .line 704
    :sswitch_7
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/larvalabs/svgandroid/ParserHelper;->nextFloat()F

    move-result v23

    move/from16 v16, v23

    .line 705
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/larvalabs/svgandroid/ParserHelper;->nextFloat()F

    move-result v23

    move/from16 v17, v23

    .line 706
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/larvalabs/svgandroid/ParserHelper;->nextFloat()F

    move-result v23

    move/from16 v18, v23

    .line 707
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/larvalabs/svgandroid/ParserHelper;->nextFloat()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v19, v23

    .line 708
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/larvalabs/svgandroid/ParserHelper;->nextFloat()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v20, v23

    .line 709
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/larvalabs/svgandroid/ParserHelper;->nextFloat()F

    move-result v23

    move/from16 v21, v23

    .line 710
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/larvalabs/svgandroid/ParserHelper;->nextFloat()F

    move-result v23

    move/from16 v22, v23

    .line 711
    move/from16 v23, v13

    const/16 v24, 0x61

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    .line 712
    move/from16 v23, v21

    move/from16 v24, v6

    add-float v23, v23, v24

    move/from16 v21, v23

    .line 713
    move/from16 v23, v22

    move/from16 v24, v7

    add-float v23, v23, v24

    move/from16 v22, v23

    .line 715
    :cond_b
    move-object/from16 v23, v5

    move/from16 v24, v6

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move/from16 v26, v7

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move/from16 v28, v21

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    move/from16 v30, v22

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move/from16 v32, v16

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    move/from16 v34, v17

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    move/from16 v36, v18

    move/from16 v0, v36

    float-to-double v0, v0

    move-wide/from16 v36, v0

    move/from16 v38, v19

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_c

    const/16 v38, 0x1

    :goto_4
    move/from16 v39, v20

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_d

    const/16 v39, 0x1

    :goto_5
    invoke-static/range {v23 .. v39}, Lcom/larvalabs/svgandroid/SVGParser;->drawArc(Landroid/graphics/Path;DDDDDDDZZ)V

    .line 716
    move/from16 v23, v21

    move/from16 v6, v23

    .line 717
    move/from16 v23, v22

    move/from16 v7, v23

    .line 718
    goto/16 :goto_2

    .line 715
    :cond_c
    const/16 v38, 0x0

    goto :goto_4

    :cond_d
    const/16 v39, 0x0

    goto :goto_5

    .line 722
    :sswitch_8
    const/16 v23, 0x1

    move/from16 v15, v23

    .line 723
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/larvalabs/svgandroid/ParserHelper;->nextFloat()F

    move-result v23

    move/from16 v16, v23

    .line 724
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/larvalabs/svgandroid/ParserHelper;->nextFloat()F

    move-result v23

    move/from16 v17, v23

    .line 725
    move/from16 v23, v13

    const/16 v24, 0x74

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    .line 726
    move/from16 v23, v16

    move/from16 v24, v6

    add-float v23, v23, v24

    move/from16 v16, v23

    .line 727
    move/from16 v23, v17

    move/from16 v24, v7

    add-float v23, v23, v24

    move/from16 v17, v23

    .line 729
    :cond_e
    const/high16 v23, 0x40000000    # 2.0f

    move/from16 v24, v6

    mul-float v23, v23, v24

    move/from16 v24, v8

    sub-float v23, v23, v24

    move/from16 v18, v23

    .line 730
    const/high16 v23, 0x40000000    # 2.0f

    move/from16 v24, v7

    mul-float v23, v23, v24

    move/from16 v24, v9

    sub-float v23, v23, v24

    move/from16 v19, v23

    .line 731
    move-object/from16 v23, v5

    move/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v18

    move/from16 v27, v19

    move/from16 v28, v16

    move/from16 v29, v17

    invoke-virtual/range {v23 .. v29}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 732
    move/from16 v23, v16

    move/from16 v6, v23

    .line 733
    move/from16 v23, v17

    move/from16 v7, v23

    .line 734
    move/from16 v23, v18

    move/from16 v8, v23

    .line 735
    move/from16 v23, v19

    move/from16 v9, v23

    .line 736
    goto/16 :goto_2

    .line 740
    :sswitch_9
    const/16 v23, 0x1

    move/from16 v15, v23

    .line 741
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/larvalabs/svgandroid/ParserHelper;->nextFloat()F

    move-result v23

    move/from16 v16, v23

    .line 742
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/larvalabs/svgandroid/ParserHelper;->nextFloat()F

    move-result v23

    move/from16 v17, v23

    .line 743
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/larvalabs/svgandroid/ParserHelper;->nextFloat()F

    move-result v23

    move/from16 v18, v23

    .line 744
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/larvalabs/svgandroid/ParserHelper;->nextFloat()F

    move-result v23

    move/from16 v19, v23

    .line 745
    move/from16 v23, v13

    const/16 v24, 0x71

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    .line 746
    move/from16 v23, v18

    move/from16 v24, v6

    add-float v23, v23, v24

    move/from16 v18, v23

    .line 747
    move/from16 v23, v19

    move/from16 v24, v7

    add-float v23, v23, v24

    move/from16 v19, v23

    .line 748
    move/from16 v23, v16

    move/from16 v24, v6

    add-float v23, v23, v24

    move/from16 v16, v23

    .line 749
    move/from16 v23, v17

    move/from16 v24, v7

    add-float v23, v23, v24

    move/from16 v17, v23

    .line 751
    :cond_f
    move-object/from16 v23, v5

    move/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v16

    move/from16 v27, v17

    move/from16 v28, v18

    move/from16 v29, v19

    invoke-virtual/range {v23 .. v29}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 752
    move/from16 v23, v16

    move/from16 v8, v23

    .line 753
    move/from16 v23, v17

    move/from16 v9, v23

    .line 754
    move/from16 v23, v18

    move/from16 v6, v23

    .line 755
    move/from16 v23, v19

    move/from16 v7, v23

    .line 756
    goto/16 :goto_2

    .line 591
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_7
        0x43 -> :sswitch_5
        0x48 -> :sswitch_3
        0x4c -> :sswitch_2
        0x4d -> :sswitch_0
        0x51 -> :sswitch_9
        0x53 -> :sswitch_6
        0x54 -> :sswitch_8
        0x56 -> :sswitch_4
        0x5a -> :sswitch_1
        0x61 -> :sswitch_7
        0x63 -> :sswitch_5
        0x68 -> :sswitch_3
        0x6c -> :sswitch_2
        0x6d -> :sswitch_0
        0x71 -> :sswitch_9
        0x73 -> :sswitch_6
        0x74 -> :sswitch_8
        0x76 -> :sswitch_4
        0x7a -> :sswitch_1
    .end sparse-switch
.end method

.method private static drawArc(Landroid/graphics/Path;DDDDDDDZZ)V
    .locals 86

    .prologue
    .line 778
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    move-wide/from16 v15, p13

    move/from16 v17, p15

    move/from16 v18, p16

    move-wide/from16 v76, v3

    move-wide/from16 v78, v7

    sub-double v76, v76, v78

    const-wide/high16 v78, 0x4000000000000000L    # 2.0

    div-double v76, v76, v78

    move-wide/from16 v19, v76

    .line 779
    move-wide/from16 v76, v5

    move-wide/from16 v78, v9

    sub-double v76, v76, v78

    const-wide/high16 v78, 0x4000000000000000L    # 2.0

    div-double v76, v76, v78

    move-wide/from16 v21, v76

    .line 780
    move-wide/from16 v76, v15

    const-wide v78, 0x4076800000000000L    # 360.0

    rem-double v76, v76, v78

    invoke-static/range {v76 .. v77}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v76

    move-wide/from16 v15, v76

    .line 781
    move-wide/from16 v76, v15

    invoke-static/range {v76 .. v77}, Ljava/lang/Math;->cos(D)D

    move-result-wide v76

    move-wide/from16 v23, v76

    .line 782
    move-wide/from16 v76, v15

    invoke-static/range {v76 .. v77}, Ljava/lang/Math;->sin(D)D

    move-result-wide v76

    move-wide/from16 v25, v76

    .line 784
    move-wide/from16 v76, v23

    move-wide/from16 v78, v19

    mul-double v76, v76, v78

    move-wide/from16 v78, v25

    move-wide/from16 v80, v21

    mul-double v78, v78, v80

    add-double v76, v76, v78

    move-wide/from16 v27, v76

    .line 785
    move-wide/from16 v76, v25

    move-wide/from16 v0, v76

    neg-double v0, v0

    move-wide/from16 v76, v0

    move-wide/from16 v78, v19

    mul-double v76, v76, v78

    move-wide/from16 v78, v23

    move-wide/from16 v80, v21

    mul-double v78, v78, v80

    add-double v76, v76, v78

    move-wide/from16 v29, v76

    .line 786
    move-wide/from16 v76, v11

    invoke-static/range {v76 .. v77}, Ljava/lang/Math;->abs(D)D

    move-result-wide v76

    move-wide/from16 v11, v76

    .line 787
    move-wide/from16 v76, v13

    invoke-static/range {v76 .. v77}, Ljava/lang/Math;->abs(D)D

    move-result-wide v76

    move-wide/from16 v13, v76

    .line 789
    move-wide/from16 v76, v11

    move-wide/from16 v78, v11

    mul-double v76, v76, v78

    move-wide/from16 v31, v76

    .line 790
    move-wide/from16 v76, v13

    move-wide/from16 v78, v13

    mul-double v76, v76, v78

    move-wide/from16 v33, v76

    .line 791
    move-wide/from16 v76, v27

    move-wide/from16 v78, v27

    mul-double v76, v76, v78

    move-wide/from16 v35, v76

    .line 792
    move-wide/from16 v76, v29

    move-wide/from16 v78, v29

    mul-double v76, v76, v78

    move-wide/from16 v37, v76

    .line 795
    move-wide/from16 v76, v35

    move-wide/from16 v78, v31

    div-double v76, v76, v78

    move-wide/from16 v78, v37

    move-wide/from16 v80, v33

    div-double v78, v78, v80

    add-double v76, v76, v78

    move-wide/from16 v39, v76

    .line 796
    move-wide/from16 v76, v39

    const-wide/high16 v78, 0x3ff0000000000000L    # 1.0

    cmpl-double v76, v76, v78

    if-lez v76, :cond_0

    .line 797
    move-wide/from16 v76, v39

    invoke-static/range {v76 .. v77}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v76

    move-wide/from16 v78, v11

    mul-double v76, v76, v78

    move-wide/from16 v11, v76

    .line 798
    move-wide/from16 v76, v39

    invoke-static/range {v76 .. v77}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v76

    move-wide/from16 v78, v13

    mul-double v76, v76, v78

    move-wide/from16 v13, v76

    .line 799
    move-wide/from16 v76, v11

    move-wide/from16 v78, v11

    mul-double v76, v76, v78

    move-wide/from16 v31, v76

    .line 800
    move-wide/from16 v76, v13

    move-wide/from16 v78, v13

    mul-double v76, v76, v78

    move-wide/from16 v33, v76

    .line 804
    :cond_0
    move/from16 v76, v17

    move/from16 v77, v18

    move/from16 v0, v76

    move/from16 v1, v77

    if-ne v0, v1, :cond_2

    const/16 v76, -0x1

    :goto_0
    move/from16 v0, v76

    int-to-double v0, v0

    move-wide/from16 v76, v0

    move-wide/from16 v41, v76

    .line 805
    move-wide/from16 v76, v31

    move-wide/from16 v78, v33

    mul-double v76, v76, v78

    move-wide/from16 v78, v31

    move-wide/from16 v80, v37

    mul-double v78, v78, v80

    sub-double v76, v76, v78

    move-wide/from16 v78, v33

    move-wide/from16 v80, v35

    mul-double v78, v78, v80

    sub-double v76, v76, v78

    .line 806
    move-wide/from16 v78, v31

    move-wide/from16 v80, v37

    mul-double v78, v78, v80

    move-wide/from16 v80, v33

    move-wide/from16 v82, v35

    mul-double v80, v80, v82

    add-double v78, v78, v80

    .line 805
    div-double v76, v76, v78

    move-wide/from16 v43, v76

    .line 807
    move-wide/from16 v76, v43

    const-wide/16 v78, 0x0

    cmpg-double v76, v76, v78

    if-gez v76, :cond_3

    const-wide/16 v76, 0x0

    :goto_1
    move-wide/from16 v43, v76

    .line 808
    move-wide/from16 v76, v41

    move-wide/from16 v78, v43

    invoke-static/range {v78 .. v79}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v78

    mul-double v76, v76, v78

    move-wide/from16 v45, v76

    .line 809
    move-wide/from16 v76, v45

    move-wide/from16 v78, v11

    move-wide/from16 v80, v29

    mul-double v78, v78, v80

    move-wide/from16 v80, v13

    div-double v78, v78, v80

    mul-double v76, v76, v78

    move-wide/from16 v47, v76

    .line 810
    move-wide/from16 v76, v45

    move-wide/from16 v78, v13

    move-wide/from16 v80, v27

    mul-double v78, v78, v80

    move-wide/from16 v80, v11

    div-double v78, v78, v80

    move-wide/from16 v0, v78

    neg-double v0, v0

    move-wide/from16 v78, v0

    mul-double v76, v76, v78

    move-wide/from16 v49, v76

    .line 812
    move-wide/from16 v76, v3

    move-wide/from16 v78, v7

    add-double v76, v76, v78

    const-wide/high16 v78, 0x4000000000000000L    # 2.0

    div-double v76, v76, v78

    move-wide/from16 v51, v76

    .line 813
    move-wide/from16 v76, v5

    move-wide/from16 v78, v9

    add-double v76, v76, v78

    const-wide/high16 v78, 0x4000000000000000L    # 2.0

    div-double v76, v76, v78

    move-wide/from16 v53, v76

    .line 814
    move-wide/from16 v76, v51

    move-wide/from16 v78, v23

    move-wide/from16 v80, v47

    mul-double v78, v78, v80

    move-wide/from16 v80, v25

    move-wide/from16 v82, v49

    mul-double v80, v80, v82

    sub-double v78, v78, v80

    add-double v76, v76, v78

    move-wide/from16 v55, v76

    .line 815
    move-wide/from16 v76, v53

    move-wide/from16 v78, v25

    move-wide/from16 v80, v47

    mul-double v78, v78, v80

    move-wide/from16 v80, v23

    move-wide/from16 v82, v49

    mul-double v80, v80, v82

    add-double v78, v78, v80

    add-double v76, v76, v78

    move-wide/from16 v57, v76

    .line 818
    move-wide/from16 v76, v27

    move-wide/from16 v78, v47

    sub-double v76, v76, v78

    move-wide/from16 v78, v11

    div-double v76, v76, v78

    move-wide/from16 v59, v76

    .line 819
    move-wide/from16 v76, v29

    move-wide/from16 v78, v49

    sub-double v76, v76, v78

    move-wide/from16 v78, v13

    div-double v76, v76, v78

    move-wide/from16 v61, v76

    .line 820
    move-wide/from16 v76, v27

    move-wide/from16 v0, v76

    neg-double v0, v0

    move-wide/from16 v76, v0

    move-wide/from16 v78, v47

    sub-double v76, v76, v78

    move-wide/from16 v78, v11

    div-double v76, v76, v78

    move-wide/from16 v63, v76

    .line 821
    move-wide/from16 v76, v29

    move-wide/from16 v0, v76

    neg-double v0, v0

    move-wide/from16 v76, v0

    move-wide/from16 v78, v49

    sub-double v76, v76, v78

    move-wide/from16 v78, v13

    div-double v76, v76, v78

    move-wide/from16 v65, v76

    .line 825
    move-wide/from16 v76, v59

    move-wide/from16 v78, v59

    mul-double v76, v76, v78

    move-wide/from16 v78, v61

    move-wide/from16 v80, v61

    mul-double v78, v78, v80

    add-double v76, v76, v78

    invoke-static/range {v76 .. v77}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v76

    move-wide/from16 v69, v76

    .line 826
    move-wide/from16 v76, v59

    move-wide/from16 v67, v76

    .line 827
    move-wide/from16 v76, v61

    const-wide/16 v78, 0x0

    cmpg-double v76, v76, v78

    if-gez v76, :cond_4

    const-wide/high16 v76, -0x4010000000000000L    # -1.0

    :goto_2
    move-wide/from16 v41, v76

    .line 828
    move-wide/from16 v76, v41

    move-wide/from16 v78, v67

    move-wide/from16 v80, v69

    div-double v78, v78, v80

    invoke-static/range {v78 .. v79}, Ljava/lang/Math;->acos(D)D

    move-result-wide v78

    mul-double v76, v76, v78

    invoke-static/range {v76 .. v77}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v76

    move-wide/from16 v71, v76

    .line 831
    move-wide/from16 v76, v59

    move-wide/from16 v78, v59

    mul-double v76, v76, v78

    move-wide/from16 v78, v61

    move-wide/from16 v80, v61

    mul-double v78, v78, v80

    add-double v76, v76, v78

    move-wide/from16 v78, v63

    move-wide/from16 v80, v63

    mul-double v78, v78, v80

    move-wide/from16 v80, v65

    move-wide/from16 v82, v65

    mul-double v80, v80, v82

    add-double v78, v78, v80

    mul-double v76, v76, v78

    invoke-static/range {v76 .. v77}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v76

    move-wide/from16 v69, v76

    .line 832
    move-wide/from16 v76, v59

    move-wide/from16 v78, v63

    mul-double v76, v76, v78

    move-wide/from16 v78, v61

    move-wide/from16 v80, v65

    mul-double v78, v78, v80

    add-double v76, v76, v78

    move-wide/from16 v67, v76

    .line 833
    move-wide/from16 v76, v59

    move-wide/from16 v78, v65

    mul-double v76, v76, v78

    move-wide/from16 v78, v61

    move-wide/from16 v80, v63

    mul-double v78, v78, v80

    sub-double v76, v76, v78

    const-wide/16 v78, 0x0

    cmpg-double v76, v76, v78

    if-gez v76, :cond_5

    const-wide/high16 v76, -0x4010000000000000L    # -1.0

    :goto_3
    move-wide/from16 v41, v76

    .line 834
    move-wide/from16 v76, v41

    move-wide/from16 v78, v67

    move-wide/from16 v80, v69

    div-double v78, v78, v80

    invoke-static/range {v78 .. v79}, Ljava/lang/Math;->acos(D)D

    move-result-wide v78

    mul-double v76, v76, v78

    invoke-static/range {v76 .. v77}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v76

    move-wide/from16 v73, v76

    .line 835
    move/from16 v76, v18

    if-nez v76, :cond_6

    move-wide/from16 v76, v73

    const-wide/16 v78, 0x0

    cmpl-double v76, v76, v78

    if-lez v76, :cond_6

    .line 836
    move-wide/from16 v76, v73

    const-wide v78, 0x4076800000000000L    # 360.0

    sub-double v76, v76, v78

    move-wide/from16 v73, v76

    .line 840
    :cond_1
    :goto_4
    move-wide/from16 v76, v73

    const-wide v78, 0x4076800000000000L    # 360.0

    rem-double v76, v76, v78

    move-wide/from16 v73, v76

    .line 841
    move-wide/from16 v76, v71

    const-wide v78, 0x4076800000000000L    # 360.0

    rem-double v76, v76, v78

    move-wide/from16 v71, v76

    .line 843
    new-instance v76, Landroid/graphics/RectF;

    move-object/from16 v85, v76

    move-object/from16 v76, v85

    move-object/from16 v77, v85

    move-wide/from16 v78, v55

    move-wide/from16 v80, v11

    sub-double v78, v78, v80

    move-wide/from16 v0, v78

    double-to-float v0, v0

    move/from16 v78, v0

    move-wide/from16 v79, v57

    move-wide/from16 v81, v13

    sub-double v79, v79, v81

    move-wide/from16 v0, v79

    double-to-float v0, v0

    move/from16 v79, v0

    move-wide/from16 v80, v55

    move-wide/from16 v82, v11

    add-double v80, v80, v82

    move-wide/from16 v0, v80

    double-to-float v0, v0

    move/from16 v80, v0

    move-wide/from16 v81, v57

    move-wide/from16 v83, v13

    add-double v81, v81, v83

    move-wide/from16 v0, v81

    double-to-float v0, v0

    move/from16 v81, v0

    invoke-direct/range {v77 .. v81}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v75, v76

    .line 844
    move-object/from16 v76, v2

    move-object/from16 v77, v75

    move-wide/from16 v78, v71

    move-wide/from16 v0, v78

    double-to-float v0, v0

    move/from16 v78, v0

    move-wide/from16 v79, v73

    move-wide/from16 v0, v79

    double-to-float v0, v0

    move/from16 v79, v0

    invoke-virtual/range {v76 .. v79}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 845
    return-void

    .line 804
    :cond_2
    const/16 v76, 0x1

    goto/16 :goto_0

    .line 807
    :cond_3
    move-wide/from16 v76, v43

    goto/16 :goto_1

    .line 827
    :cond_4
    const-wide/high16 v76, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_2

    .line 833
    :cond_5
    const-wide/high16 v76, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_3

    .line 837
    :cond_6
    move/from16 v76, v18

    if-eqz v76, :cond_1

    move-wide/from16 v76, v73

    const-wide/16 v78, 0x0

    cmpg-double v76, v76, v78

    if-gez v76, :cond_1

    .line 838
    move-wide/from16 v76, v73

    const-wide v78, 0x4076800000000000L    # 360.0

    add-double v76, v76, v78

    move-wide/from16 v73, v76

    goto/16 :goto_4
.end method

.method private static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 358
    move-object v0, p0

    move-object v1, v0

    .line 359
    const-string v2, "\""

    const-string v3, "&quot;"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 360
    const-string v2, "\'"

    const-string v3, "&apos"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 361
    const-string v2, "<"

    const-string v3, "&lt;"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 362
    const-string v2, ">"

    const-string v3, "&gt;"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 363
    const-string v2, "&"

    const-string v3, "&amp;"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 358
    move-object v0, v1

    return-object v0
.end method

.method private static getNumberParseAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/larvalabs/svgandroid/SVGParser$NumberParse;
    .locals 6

    .prologue
    .line 848
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-interface {v4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v4

    move v2, v4

    .line 849
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v2

    if-lt v4, v5, :cond_0

    .line 854
    const/4 v4, 0x0

    move-object v0, v4

    :goto_1
    return-object v0

    .line 850
    :cond_0
    move-object v4, v1

    move v5, v3

    invoke-interface {v4, v5}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 851
    move-object v4, v1

    move v5, v3

    invoke-interface {v4, v5}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/larvalabs/svgandroid/SVGParser;->parseNumbers(Ljava/lang/String;)Lcom/larvalabs/svgandroid/SVGParser$NumberParse;

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    .line 849
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getSVGFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/larvalabs/svgandroid/SVG;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/larvalabs/svgandroid/SVGParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    move-object v2, v4

    .line 136
    move-object v4, v2

    invoke-static {v4}, Lcom/larvalabs/svgandroid/SVGParser;->getSVGFromInputStream(Ljava/io/InputStream;)Lcom/larvalabs/svgandroid/SVG;

    move-result-object v4

    move-object v3, v4

    .line 137
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 138
    move-object v4, v3

    move-object v0, v4

    return-object v0
.end method

.method public static getSVGFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;II)Lcom/larvalabs/svgandroid/SVG;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/larvalabs/svgandroid/SVGParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    move-object v4, v6

    .line 190
    move-object v6, v4

    move v7, v2

    move v8, v3

    invoke-static {v6, v7, v8}, Lcom/larvalabs/svgandroid/SVGParser;->getSVGFromInputStream(Ljava/io/InputStream;II)Lcom/larvalabs/svgandroid/SVG;

    move-result-object v6

    move-object v5, v6

    .line 191
    move-object v6, v4

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 192
    move-object v6, v5

    move-object v0, v6

    return-object v0
.end method

.method public static getSVGFromInputStream(Ljava/io/InputStream;)Lcom/larvalabs/svgandroid/SVG;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/larvalabs/svgandroid/SVGParseException;
        }
    .end annotation

    .prologue
    .line 102
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/larvalabs/svgandroid/SVGParser;->DPI:F

    invoke-static/range {v1 .. v6}, Lcom/larvalabs/svgandroid/SVGParser;->parse(Ljava/io/InputStream;Ljava/lang/Integer;Ljava/lang/Integer;ZZF)Lcom/larvalabs/svgandroid/SVG;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getSVGFromInputStream(Ljava/io/InputStream;II)Lcom/larvalabs/svgandroid/SVG;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/larvalabs/svgandroid/SVGParseException;
        }
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget v8, Lcom/larvalabs/svgandroid/SVGParser;->DPI:F

    invoke-static/range {v3 .. v8}, Lcom/larvalabs/svgandroid/SVGParser;->parse(Ljava/io/InputStream;Ljava/lang/Integer;Ljava/lang/Integer;ZZF)Lcom/larvalabs/svgandroid/SVG;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public static getSVGFromResource(Landroid/content/res/Resources;I)Lcom/larvalabs/svgandroid/SVG;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/larvalabs/svgandroid/SVGParseException;
        }
    .end annotation

    .prologue
    .line 123
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget v7, Lcom/larvalabs/svgandroid/SVGParser;->DPI:F

    invoke-static/range {v2 .. v7}, Lcom/larvalabs/svgandroid/SVGParser;->parse(Ljava/io/InputStream;Ljava/lang/Integer;Ljava/lang/Integer;ZZF)Lcom/larvalabs/svgandroid/SVG;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static getSVGFromResource(Landroid/content/res/Resources;III)Lcom/larvalabs/svgandroid/SVG;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/larvalabs/svgandroid/SVGParseException;
        }
    .end annotation

    .prologue
    .line 175
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    move v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget v9, Lcom/larvalabs/svgandroid/SVGParser;->DPI:F

    invoke-static/range {v4 .. v9}, Lcom/larvalabs/svgandroid/SVGParser;->parse(Ljava/io/InputStream;Ljava/lang/Integer;Ljava/lang/Integer;ZZF)Lcom/larvalabs/svgandroid/SVG;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public static getSVGFromString(Ljava/lang/String;)Lcom/larvalabs/svgandroid/SVG;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/larvalabs/svgandroid/SVGParseException;
        }
    .end annotation

    .prologue
    .line 112
    move-object v0, p0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/larvalabs/svgandroid/SVGParser;->DPI:F

    invoke-static/range {v1 .. v6}, Lcom/larvalabs/svgandroid/SVGParser;->parse(Ljava/io/InputStream;Ljava/lang/Integer;Ljava/lang/Integer;ZZF)Lcom/larvalabs/svgandroid/SVG;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getSVGFromString(Ljava/lang/String;II)Lcom/larvalabs/svgandroid/SVG;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/larvalabs/svgandroid/SVGParseException;
        }
    .end annotation

    .prologue
    .line 162
    move-object v0, p0

    move v1, p1

    move v2, p2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget v8, Lcom/larvalabs/svgandroid/SVGParser;->DPI:F

    invoke-static/range {v3 .. v8}, Lcom/larvalabs/svgandroid/SVGParser;->parse(Ljava/io/InputStream;Ljava/lang/Integer;Ljava/lang/Integer;ZZF)Lcom/larvalabs/svgandroid/SVG;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method private static getStringAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 858
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-interface {v4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v4

    move v2, v4

    .line 859
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v2

    if-lt v4, v5, :cond_0

    .line 864
    const/4 v4, 0x0

    move-object v0, v4

    :goto_1
    return-object v0

    .line 860
    :cond_0
    move-object v4, v1

    move v5, v3

    invoke-interface {v4, v5}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 861
    move-object v4, v1

    move v5, v3

    invoke-interface {v4, v5}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    .line 859
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static parse(Ljava/io/InputStream;Ljava/lang/Integer;Ljava/lang/Integer;ZZF)Lcom/larvalabs/svgandroid/SVG;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/larvalabs/svgandroid/SVGParseException;
        }
    .end annotation

    .prologue
    .line 315
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    const/16 v18, 0x0

    move-object/from16 v8, v18

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v9, v18

    .line 318
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v18

    move-object/from16 v11, v18

    .line 319
    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v18

    move-object/from16 v12, v18

    .line 320
    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v18

    move-object/from16 v13, v18

    .line 321
    new-instance v18, Landroid/graphics/Picture;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Picture;-><init>()V

    move-object/from16 v14, v18

    .line 322
    new-instance v18, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v14

    const/16 v21, 0x0

    invoke-direct/range {v19 .. v21}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;-><init>(Landroid/graphics/Picture;Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;)V

    move-object/from16 v8, v18

    .line 323
    move-object/from16 v18, v8

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    invoke-virtual/range {v18 .. v20}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->setColorSwap(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 324
    move-object/from16 v18, v8

    move/from16 v19, v5

    invoke-virtual/range {v18 .. v19}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->setWhiteMode(Z)V

    .line 325
    move-object/from16 v18, v8

    move/from16 v19, v7

    invoke-virtual/range {v18 .. v19}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->setDpi(F)V

    .line 326
    move/from16 v18, v6

    if-eqz v18, :cond_1

    .line 327
    move-object/from16 v18, v13

    move-object/from16 v19, v8

    invoke-interface/range {v18 .. v19}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 328
    move-object/from16 v18, v13

    new-instance v19, Lorg/xml/sax/InputSource;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v21, v2

    invoke-direct/range {v20 .. v21}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface/range {v18 .. v19}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 342
    :goto_0
    const-string v18, "SVG"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    const-string v21, "Parsing complete in "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v22, v9

    sub-long v20, v20, v22

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " millis."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 343
    new-instance v18, Lcom/larvalabs/svgandroid/SVG;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v14

    move-object/from16 v21, v8

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->bounds:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Lcom/larvalabs/svgandroid/SVG;-><init>(Landroid/graphics/Picture;Landroid/graphics/RectF;)V

    move-object/from16 v15, v18

    .line 345
    move-object/from16 v18, v8

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->limits:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v18

    if-nez v18, :cond_0

    .line 346
    move-object/from16 v18, v15

    move-object/from16 v19, v8

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->limits:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/larvalabs/svgandroid/SVG;->setLimits(Landroid/graphics/RectF;)V

    .line 348
    :cond_0
    move-object/from16 v18, v15

    move-object/from16 v2, v18

    return-object v2

    .line 330
    :cond_1
    new-instance v18, Lcom/larvalabs/svgandroid/SVGParser$CopyInputStream;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v2

    invoke-direct/range {v19 .. v20}, Lcom/larvalabs/svgandroid/SVGParser$CopyInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v15, v18

    .line 332
    new-instance v18, Lcom/larvalabs/svgandroid/SVGParser$IDHandler;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const/16 v20, 0x0

    invoke-direct/range {v19 .. v20}, Lcom/larvalabs/svgandroid/SVGParser$IDHandler;-><init>(Lcom/larvalabs/svgandroid/SVGParser$IDHandler;)V

    move-object/from16 v16, v18

    .line 333
    move-object/from16 v18, v13

    move-object/from16 v19, v16

    invoke-interface/range {v18 .. v19}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 335
    move-object/from16 v18, v15

    invoke-virtual/range {v18 .. v18}, Lcom/larvalabs/svgandroid/SVGParser$CopyInputStream;->getCopy()Ljava/io/ByteArrayInputStream;

    move-result-object v18

    move-object/from16 v17, v18

    .line 336
    move-object/from16 v18, v13

    new-instance v19, Lorg/xml/sax/InputSource;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v21, v15

    invoke-virtual/range {v21 .. v21}, Lcom/larvalabs/svgandroid/SVGParser$CopyInputStream;->getCopy()Ljava/io/ByteArrayInputStream;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface/range {v18 .. v19}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 337
    move-object/from16 v18, v8

    move-object/from16 v19, v16

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$IDHandler;->idXml:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->idXml:Ljava/util/HashMap;

    .line 339
    move-object/from16 v18, v13

    move-object/from16 v19, v8

    invoke-interface/range {v18 .. v19}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 340
    move-object/from16 v18, v13

    new-instance v19, Lorg/xml/sax/InputSource;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v21, v15

    invoke-virtual/range {v21 .. v21}, Lcom/larvalabs/svgandroid/SVGParser$CopyInputStream;->getCopy()Ljava/io/ByteArrayInputStream;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface/range {v18 .. v19}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 349
    :catch_0
    move-exception v18

    move-object/from16 v11, v18

    .line 350
    const-string v18, "SVG"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    const-string v21, "Parse error: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v11

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 353
    new-instance v18, Lcom/larvalabs/svgandroid/SVGParseException;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v11

    invoke-direct/range {v19 .. v20}, Lcom/larvalabs/svgandroid/SVGParseException;-><init>(Ljava/lang/Throwable;)V

    throw v18
.end method

.method private static parseNumbers(Ljava/lang/String;)Lcom/larvalabs/svgandroid/SVGParser$NumberParse;
    .locals 14

    .prologue
    .line 368
    move-object v0, p0

    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move v1, v9

    .line 369
    const/4 v9, 0x0

    move v2, v9

    .line 370
    new-instance v9, Ljava/util/ArrayList;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v9

    .line 371
    const/4 v9, 0x0

    move v4, v9

    .line 372
    const/4 v9, 0x1

    move v5, v9

    :goto_0
    move v9, v5

    move v10, v1

    if-lt v9, v10, :cond_1

    .line 434
    move-object v9, v0

    move v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 435
    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 438
    move-object v9, v3

    move-object v10, v5

    :try_start_0
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 442
    :goto_1
    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move v2, v9

    .line 444
    :cond_0
    new-instance v9, Lcom/larvalabs/svgandroid/SVGParser$NumberParse;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v3

    move v12, v2

    invoke-direct {v10, v11, v12}, Lcom/larvalabs/svgandroid/SVGParser$NumberParse;-><init>(Ljava/util/ArrayList;I)V

    move-object v0, v9

    :goto_2
    return-object v0

    .line 373
    :cond_1
    move v9, v4

    if-eqz v9, :cond_2

    .line 374
    const/4 v9, 0x0

    move v4, v9

    .line 372
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 377
    :cond_2
    move-object v9, v0

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move v6, v9

    .line 378
    move v9, v6

    sparse-switch v9, :sswitch_data_0

    goto :goto_3

    .line 415
    :sswitch_0
    move-object v9, v0

    move v10, v2

    move v11, v5

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 417
    move-object v9, v7

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_5

    .line 419
    move-object v9, v7

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    move-object v8, v9

    .line 420
    move-object v9, v3

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 421
    move v9, v6

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_4

    .line 422
    move v9, v5

    move v2, v9

    goto :goto_3

    .line 401
    :sswitch_1
    move-object v9, v0

    move v10, v2

    move v11, v5

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 402
    move-object v9, v7

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 404
    move-object v9, v7

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    move-object v8, v9

    .line 405
    move-object v9, v3

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 407
    :cond_3
    move v9, v5

    move v2, v9

    .line 408
    new-instance v9, Lcom/larvalabs/svgandroid/SVGParser$NumberParse;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v3

    move v12, v2

    invoke-direct {v10, v11, v12}, Lcom/larvalabs/svgandroid/SVGParser$NumberParse;-><init>(Ljava/util/ArrayList;I)V

    move-object v0, v9

    goto :goto_2

    .line 424
    :cond_4
    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v2, v9

    .line 425
    const/4 v9, 0x1

    move v4, v9

    goto :goto_3

    .line 428
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 439
    :catch_0
    move-exception v9

    move-object v6, v9

    goto/16 :goto_1

    .line 378
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0x20 -> :sswitch_0
        0x29 -> :sswitch_1
        0x2c -> :sswitch_0
        0x2d -> :sswitch_0
        0x41 -> :sswitch_1
        0x43 -> :sswitch_1
        0x48 -> :sswitch_1
        0x4c -> :sswitch_1
        0x4d -> :sswitch_1
        0x51 -> :sswitch_1
        0x53 -> :sswitch_1
        0x54 -> :sswitch_1
        0x56 -> :sswitch_1
        0x5a -> :sswitch_1
        0x61 -> :sswitch_1
        0x63 -> :sswitch_1
        0x68 -> :sswitch_1
        0x6c -> :sswitch_1
        0x6d -> :sswitch_1
        0x71 -> :sswitch_1
        0x73 -> :sswitch_1
        0x74 -> :sswitch_1
        0x76 -> :sswitch_1
        0x7a -> :sswitch_1
    .end sparse-switch
.end method

.method public static parsePath(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 2

    .prologue
    .line 202
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/larvalabs/svgandroid/SVGParser;->doPath(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private static parseTransform(Ljava/lang/String;)Landroid/graphics/Matrix;
    .locals 7

    .prologue
    .line 453
    move-object v0, p0

    new-instance v3, Landroid/graphics/Matrix;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    move-object v1, v3

    .line 455
    :goto_0
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/larvalabs/svgandroid/SVGParser;->parseTransformItem(Ljava/lang/String;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v3

    .line 457
    move-object v3, v0

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    move v2, v3

    .line 458
    move v3, v2

    if-lez v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    if-le v3, v4, :cond_0

    .line 459
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[\\s,]*"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 454
    goto :goto_0

    .line 465
    :cond_0
    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method private static parseTransformItem(Ljava/lang/String;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 13

    .prologue
    .line 469
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    const-string v7, "matrix("

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 470
    move-object v6, v0

    const-string v7, "matrix("

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/larvalabs/svgandroid/SVGParser;->parseNumbers(Ljava/lang/String;)Lcom/larvalabs/svgandroid/SVGParser$NumberParse;

    move-result-object v6

    move-object v2, v6

    .line 471
    move-object v6, v2

    invoke-static {v6}, Lcom/larvalabs/svgandroid/SVGParser$NumberParse;->access$0(Lcom/larvalabs/svgandroid/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_0

    .line 472
    new-instance v6, Landroid/graphics/Matrix;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    move-object v3, v6

    .line 473
    move-object v6, v3

    const/16 v7, 0x9

    new-array v7, v7, [F

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    .line 475
    move-object v10, v2

    invoke-static {v10}, Lcom/larvalabs/svgandroid/SVGParser$NumberParse;->access$0(Lcom/larvalabs/svgandroid/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    aput v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x1

    .line 476
    move-object v10, v2

    invoke-static {v10}, Lcom/larvalabs/svgandroid/SVGParser$NumberParse;->access$0(Lcom/larvalabs/svgandroid/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    aput v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x2

    .line 477
    move-object v10, v2

    invoke-static {v10}, Lcom/larvalabs/svgandroid/SVGParser$NumberParse;->access$0(Lcom/larvalabs/svgandroid/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    aput v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x3

    .line 479
    move-object v10, v2

    invoke-static {v10}, Lcom/larvalabs/svgandroid/SVGParser$NumberParse;->access$0(Lcom/larvalabs/svgandroid/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    aput v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x4

    .line 480
    move-object v10, v2

    invoke-static {v10}, Lcom/larvalabs/svgandroid/SVGParser$NumberParse;->access$0(Lcom/larvalabs/svgandroid/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    aput v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x5

    .line 481
    move-object v10, v2

    invoke-static {v10}, Lcom/larvalabs/svgandroid/SVGParser$NumberParse;->access$0(Lcom/larvalabs/svgandroid/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v10

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    aput v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x6

    .line 483
    const/4 v10, 0x0

    aput v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x7

    .line 484
    const/4 v10, 0x0

    aput v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/16 v9, 0x8

    .line 485
    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    .line 473
    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->setValues([F)V

    .line 487
    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    move-result v6

    .line 538
    :cond_0
    :goto_0
    move-object v6, v1

    move-object v0, v6

    return-object v0

    .line 489
    :cond_1
    move-object v6, v0

    const-string v7, "translate("

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 490
    move-object v6, v0

    const-string v7, "translate("

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/larvalabs/svgandroid/SVGParser;->parseNumbers(Ljava/lang/String;)Lcom/larvalabs/svgandroid/SVGParser$NumberParse;

    move-result-object v6

    move-object v2, v6

    .line 491
    move-object v6, v2

    invoke-static {v6}, Lcom/larvalabs/svgandroid/SVGParser$NumberParse;->access$0(Lcom/larvalabs/svgandroid/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 492
    move-object v6, v2

    invoke-static {v6}, Lcom/larvalabs/svgandroid/SVGParser$NumberParse;->access$0(Lcom/larvalabs/svgandroid/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move v3, v6

    .line 493
    const/4 v6, 0x0

    move v4, v6

    .line 494
    move-object v6, v2

    invoke-static {v6}, Lcom/larvalabs/svgandroid/SVGParser$NumberParse;->access$0(Lcom/larvalabs/svgandroid/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 495
    move-object v6, v2

    invoke-static {v6}, Lcom/larvalabs/svgandroid/SVGParser$NumberParse;->access$0(Lcom/larvalabs/svgandroid/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move v4, v6

    .line 497
    :cond_2
    move-object v6, v1

    move v7, v3

    move v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-result v6

    goto :goto_0

    .line 499
    :cond_3
    move-object v6, v0

    const-string v7, "scale("

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 500
    move-object v6, v0

    const-string v7, "scale("

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/larvalabs/svgandroid/SVGParser;->parseNumbers(Ljava/lang/String;)Lcom/larvalabs/svgandroid/SVGParser$NumberParse;

    move-result-object v6

    move-object v2, v6

    .line 501
    move-object v6, v2

    invoke-static {v6}, Lcom/larvalabs/svgandroid/SVGParser$NumberParse;->access$0(Lcom/larvalabs/svgandroid/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 502
    move-object v6, v2

    invoke-static {v6}, Lcom/larvalabs/svgandroid/SVGParser$NumberParse;->access$0(Lcom/larvalabs/svgandroid/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move v3, v6

    .line 503
    move v6, v3

    move v4, v6

    .line 504
    move-object v6, v2

    invoke-static {v6}, Lcom/larvalabs/svgandroid/SVGParser$NumberParse;->access$0(Lcom/larvalabs/svgandroid/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_4

    .line 505
    move-object v6, v2

    invoke-static {v6}, Lcom/larvalabs/svgandroid/SVGParser$NumberParse;->access$0(Lcom/larvalabs/svgandroid/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move v4, v6

    .line 507
    :cond_4
    move-object v6, v1

    move v7, v3

    move v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    move-result v6

    goto/16 :goto_0

    .line 509
    :cond_5
    move-object v6, v0

    const-string v7, "skewX("

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 510
    move-object v6, v0

    const-string v7, "skewX("

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/larvalabs/svgandroid/SVGParser;->parseNumbers(Ljava/lang/String;)Lcom/larvalabs/svgandroid/SVGParser$NumberParse;

    move-result-object v6

    move-object v2, v6

    .line 511
    move-object v6, v2

    invoke-static {v6}, Lcom/larvalabs/svgandroid/SVGParser$NumberParse;->access$0(Lcom/larvalabs/svgandroid/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 512
    move-object v6, v2

    invoke-static {v6}, Lcom/larvalabs/svgandroid/SVGParser$NumberParse;->access$0(Lcom/larvalabs/svgandroid/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move v3, v6

    .line 513
    move-object v6, v1

    move v7, v3

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->tan(D)D

    move-result-wide v7

    double-to-float v7, v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->preSkew(FF)Z

    move-result v6

    goto/16 :goto_0

    .line 515
    :cond_6
    move-object v6, v0

    const-string v7, "skewY("

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 516
    move-object v6, v0

    const-string v7, "skewY("

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/larvalabs/svgandroid/SVGParser;->parseNumbers(Ljava/lang/String;)Lcom/larvalabs/svgandroid/SVGParser$NumberParse;

    move-result-object v6

    move-object v2, v6

    .line 517
    move-object v6, v2

    invoke-static {v6}, Lcom/larvalabs/svgandroid/SVGParser$NumberParse;->access$0(Lcom/larvalabs/svgandroid/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 518
    move-object v6, v2

    invoke-static {v6}, Lcom/larvalabs/svgandroid/SVGParser$NumberParse;->access$0(Lcom/larvalabs/svgandroid/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move v3, v6

    .line 519
    move-object v6, v1

    const/4 v7, 0x0

    move v8, v3

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->preSkew(FF)Z

    move-result v6

    goto/16 :goto_0

    .line 521
    :cond_7
    move-object v6, v0

    const-string v7, "rotate("

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 522
    move-object v6, v0

    const-string v7, "rotate("

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/larvalabs/svgandroid/SVGParser;->parseNumbers(Ljava/lang/String;)Lcom/larvalabs/svgandroid/SVGParser$NumberParse;

    move-result-object v6

    move-object v2, v6

    .line 523
    move-object v6, v2

    invoke-static {v6}, Lcom/larvalabs/svgandroid/SVGParser$NumberParse;->access$0(Lcom/larvalabs/svgandroid/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 524
    move-object v6, v2

    invoke-static {v6}, Lcom/larvalabs/svgandroid/SVGParser$NumberParse;->access$0(Lcom/larvalabs/svgandroid/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move v3, v6

    .line 525
    const/4 v6, 0x0

    move v4, v6

    .line 526
    const/4 v6, 0x0

    move v5, v6

    .line 527
    move-object v6, v2

    invoke-static {v6}, Lcom/larvalabs/svgandroid/SVGParser$NumberParse;->access$0(Lcom/larvalabs/svgandroid/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_8

    .line 528
    move-object v6, v2

    invoke-static {v6}, Lcom/larvalabs/svgandroid/SVGParser$NumberParse;->access$0(Lcom/larvalabs/svgandroid/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move v4, v6

    .line 529
    move-object v6, v2

    invoke-static {v6}, Lcom/larvalabs/svgandroid/SVGParser$NumberParse;->access$0(Lcom/larvalabs/svgandroid/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move v5, v6

    .line 531
    :cond_8
    move-object v6, v1

    move v7, v4

    move v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-result v6

    .line 532
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->preRotate(F)Z

    move-result v6

    .line 533
    move-object v6, v1

    move v7, v4

    neg-float v7, v7

    move v8, v5

    neg-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-result v6

    goto/16 :goto_0

    .line 536
    :cond_9
    const-string v6, "SVG"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string v9, "Invalid transform ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0
.end method
