.class public Lcom/caverock/androidsvg/CSSParser;
.super Ljava/lang/Object;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/CSSParser$Attrib;,
        Lcom/caverock/androidsvg/CSSParser$AttribOp;,
        Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;,
        Lcom/caverock/androidsvg/CSSParser$Combinator;,
        Lcom/caverock/androidsvg/CSSParser$MediaType;,
        Lcom/caverock/androidsvg/CSSParser$Rule;,
        Lcom/caverock/androidsvg/CSSParser$Ruleset;,
        Lcom/caverock/androidsvg/CSSParser$Selector;,
        Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    }
.end annotation


# static fields
.field private static final CLASS:Ljava/lang/String; = "class"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final TAG:Ljava/lang/String; = "AndroidSVG CSSParser"


# instance fields
.field private inMediaRule:Z

.field private rendererMediaType:Lcom/caverock/androidsvg/CSSParser$MediaType;


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/CSSParser$MediaType;)V
    .locals 4

    .prologue
    .line 282
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 46
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/caverock/androidsvg/CSSParser;->rendererMediaType:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 48
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/caverock/androidsvg/CSSParser;->inMediaRule:Z

    .line 284
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/caverock/androidsvg/CSSParser;->rendererMediaType:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 285
    return-void
.end method

.method private static getChildPosition(Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVG$SvgContainer;",
            ">;I",
            "Lcom/caverock/androidsvg/SVG$SvgElementBase;",
            ")I"
        }
    .end annotation

    .prologue
    .line 867
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v6, v1

    if-gez v6, :cond_0

    .line 868
    const/4 v6, -0x1

    move v0, v6

    .line 878
    :goto_0
    return v0

    .line 869
    :cond_0
    move-object v6, v0

    move v7, v1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v2

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$SvgElementBase;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eq v6, v7, :cond_1

    .line 870
    const/4 v6, -0x1

    move v0, v6

    goto :goto_0

    .line 871
    :cond_1
    const/4 v6, 0x0

    move v3, v6

    .line 872
    move-object v6, v2

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$SvgElementBase;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v6}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v5, v6

    :goto_1
    move-object v6, v5

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 878
    const/4 v6, -0x1

    move v0, v6

    goto :goto_0

    .line 872
    :cond_2
    move-object v6, v5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/caverock/androidsvg/SVG$SvgObject;

    move-object v4, v6

    .line 874
    move-object v6, v4

    move-object v7, v2

    if-ne v6, v7, :cond_3

    .line 875
    move v6, v3

    move v0, v6

    goto :goto_0

    .line 876
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static mediaMatches(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$MediaType;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 299
    move-object v0, p0

    move-object v1, p1

    new-instance v4, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 300
    move-object v4, v2

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 301
    move-object v4, v2

    invoke-static {v4}, Lcom/caverock/androidsvg/CSSParser;->parseMediaList(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/List;

    move-result-object v4

    move-object v3, v4

    .line 302
    move-object v4, v2

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 303
    new-instance v4, Lorg/xml/sax/SAXException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Invalid @media type list"

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 304
    :cond_0
    move-object v4, v3

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/caverock/androidsvg/CSSParser;->mediaMatches(Ljava/util/List;Lcom/caverock/androidsvg/CSSParser$MediaType;)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method private static mediaMatches(Ljava/util/List;Lcom/caverock/androidsvg/CSSParser$MediaType;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/CSSParser$MediaType;",
            ">;",
            "Lcom/caverock/androidsvg/CSSParser$MediaType;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 553
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v4

    :cond_0
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 557
    const/4 v4, 0x0

    move v0, v4

    :goto_0
    return v0

    .line 553
    :cond_1
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/caverock/androidsvg/CSSParser$MediaType;

    move-object v2, v4

    .line 554
    move-object v4, v2

    sget-object v5, Lcom/caverock/androidsvg/CSSParser$MediaType;->all:Lcom/caverock/androidsvg/CSSParser$MediaType;

    if-eq v4, v5, :cond_2

    move-object v4, v2

    move-object v5, v1

    if-ne v4, v5, :cond_0

    .line 555
    :cond_2
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method private parseAtRule(Lcom/caverock/androidsvg/CSSParser$Ruleset;Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 581
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v2

    invoke-virtual {v5}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 582
    move-object v5, v2

    invoke-virtual {v5}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 583
    move-object v5, v3

    if-nez v5, :cond_0

    .line 584
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "Invalid \'@\' rule in <style> element"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 585
    :cond_0
    move-object v5, v0

    iget-boolean v5, v5, Lcom/caverock/androidsvg/CSSParser;->inMediaRule:Z

    if-nez v5, :cond_3

    move-object v5, v3

    const-string v6, "media"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 587
    move-object v5, v2

    invoke-static {v5}, Lcom/caverock/androidsvg/CSSParser;->parseMediaList(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/List;

    move-result-object v5

    move-object v4, v5

    .line 588
    move-object v5, v2

    const/16 v6, 0x7b

    invoke-virtual {v5, v6}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v5

    if-nez v5, :cond_1

    .line 589
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "Invalid @media rule: missing rule set"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 591
    :cond_1
    move-object v5, v2

    invoke-virtual {v5}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 592
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/CSSParser;->rendererMediaType:Lcom/caverock/androidsvg/CSSParser$MediaType;

    invoke-static {v5, v6}, Lcom/caverock/androidsvg/CSSParser;->mediaMatches(Ljava/util/List;Lcom/caverock/androidsvg/CSSParser$MediaType;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 593
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/caverock/androidsvg/CSSParser;->inMediaRule:Z

    .line 594
    move-object v5, v1

    move-object v6, v0

    move-object v7, v2

    invoke-direct {v6, v7}, Lcom/caverock/androidsvg/CSSParser;->parseRuleset(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/CSSParser$Ruleset;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/caverock/androidsvg/CSSParser$Ruleset;->addAll(Lcom/caverock/androidsvg/CSSParser$Ruleset;)V

    .line 595
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/caverock/androidsvg/CSSParser;->inMediaRule:Z

    .line 600
    :goto_0
    move-object v5, v2

    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v5

    if-nez v5, :cond_4

    .line 601
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "Invalid @media rule: expected \'}\' at end of rule set"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 597
    :cond_2
    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/CSSParser;->parseRuleset(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/CSSParser$Ruleset;

    move-result-object v5

    goto :goto_0

    .line 609
    :cond_3
    const-string v5, "Ignoring @%s rule"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v3

    aput-object v9, v7, v8

    invoke-static {v5, v6}, Lcom/caverock/androidsvg/CSSParser;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 610
    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/CSSParser;->skipAtRule(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)V

    .line 612
    :cond_4
    move-object v5, v2

    invoke-virtual {v5}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 613
    return-void
.end method

.method protected static parseClassAttribute(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 752
    move-object v0, p0

    new-instance v4, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 753
    const/4 v4, 0x0

    move-object v2, v4

    .line 755
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 765
    move-object v4, v2

    move-object v0, v4

    return-object v0

    .line 757
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 758
    move-object v4, v3

    if-nez v4, :cond_1

    .line 759
    new-instance v4, Lorg/xml/sax/SAXException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Invalid value for \"class\" attribute: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 760
    :cond_1
    move-object v4, v2

    if-nez v4, :cond_2

    .line 761
    new-instance v4, Ljava/util/ArrayList;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v4

    .line 762
    :cond_2
    move-object v4, v2

    move-object v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 763
    move-object v4, v1

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    goto :goto_0
.end method

.method private parseDeclarations(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/SVG$Style;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 714
    move-object v0, p0

    move-object v1, p1

    new-instance v5, Lcom/caverock/androidsvg/SVG$Style;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lcom/caverock/androidsvg/SVG$Style;-><init>()V

    move-object v2, v5

    .line 717
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 718
    move-object v5, v1

    invoke-virtual {v5}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 719
    move-object v5, v1

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v5

    if-nez v5, :cond_1

    .line 743
    :goto_0
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Malformed rule set in <style> element"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 721
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 722
    move-object v5, v1

    invoke-virtual {v5}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextPropertyValue()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 723
    move-object v5, v4

    if-nez v5, :cond_2

    .line 724
    goto :goto_0

    .line 726
    :cond_2
    move-object v5, v1

    invoke-virtual {v5}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 727
    move-object v5, v1

    const/16 v6, 0x21

    invoke-virtual {v5, v6}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 728
    move-object v5, v1

    invoke-virtual {v5}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 729
    move-object v5, v1

    const-string v6, "important"

    invoke-virtual {v5, v6}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 730
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Malformed rule set in <style> element: found unexpected \'!\'"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 733
    :cond_3
    move-object v5, v1

    invoke-virtual {v5}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 735
    :cond_4
    move-object v5, v1

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v5

    .line 736
    move-object v5, v2

    move-object v6, v3

    move-object v7, v4

    invoke-static {v5, v6, v7}, Lcom/caverock/androidsvg/SVGParser;->processStyleProperty(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    move-object v5, v1

    invoke-virtual {v5}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 738
    move-object v5, v1

    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 739
    move-object v5, v2

    move-object v0, v5

    return-object v0

    .line 740
    :cond_5
    move-object v5, v1

    invoke-virtual {v5}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0
.end method

.method private static parseMediaList(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/CSSParser$MediaType;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 563
    move-object v0, p0

    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 564
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 575
    :goto_0
    move-object v4, v1

    move-object v0, v4

    return-object v0

    .line 565
    :cond_1
    move-object v4, v0

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 567
    move-object v4, v1

    move-object v5, v2

    :try_start_0
    invoke-static {v5}, Lcom/caverock/androidsvg/CSSParser$MediaType;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$MediaType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 572
    move-object v4, v0

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipCommaWhitespace()Z

    move-result v4

    if-nez v4, :cond_0

    .line 573
    goto :goto_0

    .line 568
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 569
    new-instance v4, Lorg/xml/sax/SAXException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Invalid @media type list"

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private parseRule(Lcom/caverock/androidsvg/CSSParser$Ruleset;Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 661
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v0

    move-object v8, v2

    invoke-direct {v7, v8}, Lcom/caverock/androidsvg/CSSParser;->parseSelectorGroup(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/List;

    move-result-object v7

    move-object v3, v7

    .line 662
    move-object v7, v3

    if-eqz v7, :cond_2

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 664
    move-object v7, v2

    const/16 v8, 0x7b

    invoke-virtual {v7, v8}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v7

    if-nez v7, :cond_0

    .line 665
    new-instance v7, Lorg/xml/sax/SAXException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string v9, "Malformed rule block in <style> element: missing \'{\'"

    invoke-direct {v8, v9}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 666
    :cond_0
    move-object v7, v2

    invoke-virtual {v7}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 667
    move-object v7, v0

    move-object v8, v2

    invoke-direct {v7, v8}, Lcom/caverock/androidsvg/CSSParser;->parseDeclarations(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v7

    move-object v4, v7

    .line 668
    move-object v7, v2

    invoke-virtual {v7}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 669
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v6, v7

    :goto_0
    move-object v7, v6

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 672
    const/4 v7, 0x1

    move v0, v7

    .line 676
    :goto_1
    return v0

    .line 669
    :cond_1
    move-object v7, v6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/caverock/androidsvg/CSSParser$Selector;

    move-object v5, v7

    .line 670
    move-object v7, v1

    new-instance v8, Lcom/caverock/androidsvg/CSSParser$Rule;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v5

    move-object v11, v4

    invoke-direct {v9, v10, v11}, Lcom/caverock/androidsvg/CSSParser$Rule;-><init>(Lcom/caverock/androidsvg/CSSParser$Selector;Lcom/caverock/androidsvg/SVG$Style;)V

    invoke-virtual {v7, v8}, Lcom/caverock/androidsvg/CSSParser$Ruleset;->add(Lcom/caverock/androidsvg/CSSParser$Rule;)V

    goto :goto_0

    .line 676
    :cond_2
    const/4 v7, 0x0

    move v0, v7

    goto :goto_1
.end method

.method private parseRuleset(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/CSSParser$Ruleset;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 637
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Lcom/caverock/androidsvg/CSSParser$Ruleset;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/caverock/androidsvg/CSSParser$Ruleset;-><init>()V

    move-object v2, v3

    .line 638
    :goto_0
    move-object v3, v1

    invoke-virtual {v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 655
    :cond_0
    move-object v3, v2

    move-object v0, v3

    return-object v0

    .line 640
    :cond_1
    move-object v3, v1

    const-string v4, "<!--"

    invoke-virtual {v3, v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 641
    goto :goto_0

    .line 642
    :cond_2
    move-object v3, v1

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 643
    goto :goto_0

    .line 645
    :cond_3
    move-object v3, v1

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 646
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/CSSParser;->parseAtRule(Lcom/caverock/androidsvg/CSSParser$Ruleset;Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)V

    .line 647
    goto :goto_0

    .line 649
    :cond_4
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/caverock/androidsvg/CSSParser;->parseRule(Lcom/caverock/androidsvg/CSSParser$Ruleset;Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method private parseSelectorGroup(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/CSSParser$Selector;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 686
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 687
    const/4 v4, 0x0

    move-object v0, v4

    .line 707
    :goto_0
    return-object v0

    .line 689
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v4

    .line 690
    new-instance v4, Lcom/caverock/androidsvg/CSSParser$Selector;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lcom/caverock/androidsvg/CSSParser$Selector;-><init>()V

    move-object v3, v4

    .line 692
    :goto_1
    move-object v4, v1

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 705
    :cond_1
    move-object v4, v3

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 706
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 707
    :cond_2
    move-object v4, v2

    move-object v0, v4

    goto :goto_0

    .line 694
    :cond_3
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextSimpleSelector(Lcom/caverock/androidsvg/CSSParser$Selector;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 697
    move-object v4, v1

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipCommaWhitespace()Z

    move-result v4

    if-nez v4, :cond_4

    .line 698
    goto :goto_1

    .line 699
    :cond_4
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 700
    new-instance v4, Lcom/caverock/androidsvg/CSSParser$Selector;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lcom/caverock/androidsvg/CSSParser$Selector;-><init>()V

    move-object v3, v4

    goto :goto_1
.end method

.method private static ruleMatch(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/CSSParser$Selector;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVG$SvgContainer;",
            ">;I",
            "Lcom/caverock/androidsvg/SVG$SvgElementBase;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 798
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object v8, v0

    move v9, v1

    invoke-virtual {v8, v9}, Lcom/caverock/androidsvg/CSSParser$Selector;->get(I)Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    move-result-object v8

    move-object v5, v8

    .line 799
    move-object v8, v5

    move-object v9, v2

    move v10, v3

    move-object v11, v4

    invoke-static {v8, v9, v10, v11}, Lcom/caverock/androidsvg/CSSParser;->selectorMatch(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 800
    const/4 v8, 0x0

    move v0, v8

    .line 825
    :goto_0
    return v0

    .line 803
    :cond_0
    move-object v8, v5

    iget-object v8, v8, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/caverock/androidsvg/CSSParser$Combinator;

    sget-object v9, Lcom/caverock/androidsvg/CSSParser$Combinator;->DESCENDANT:Lcom/caverock/androidsvg/CSSParser$Combinator;

    if-ne v8, v9, :cond_4

    .line 805
    move v8, v1

    if-nez v8, :cond_3

    .line 806
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 809
    :cond_1
    move-object v8, v0

    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move-object v10, v2

    move v11, v3

    invoke-static {v8, v9, v10, v11}, Lcom/caverock/androidsvg/CSSParser;->ruleMatchOnAncestors(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 810
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 811
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 808
    :cond_3
    move v8, v3

    if-gez v8, :cond_1

    .line 813
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 815
    :cond_4
    move-object v8, v5

    iget-object v8, v8, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/caverock/androidsvg/CSSParser$Combinator;

    sget-object v9, Lcom/caverock/androidsvg/CSSParser$Combinator;->CHILD:Lcom/caverock/androidsvg/CSSParser$Combinator;

    if-ne v8, v9, :cond_5

    .line 817
    move-object v8, v0

    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move-object v10, v2

    move v11, v3

    invoke-static {v8, v9, v10, v11}, Lcom/caverock/androidsvg/CSSParser;->ruleMatchOnAncestors(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;I)Z

    move-result v8

    move v0, v8

    goto :goto_0

    .line 821
    :cond_5
    move-object v8, v2

    move v9, v3

    move-object v10, v4

    invoke-static {v8, v9, v10}, Lcom/caverock/androidsvg/CSSParser;->getChildPosition(Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)I

    move-result v8

    move v6, v8

    .line 822
    move v8, v6

    if-gtz v8, :cond_6

    .line 823
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 824
    :cond_6
    move-object v8, v4

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$SvgElementBase;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v8}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object v8

    move v9, v6

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    move-object v7, v8

    .line 825
    move-object v8, v0

    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move-object v10, v2

    move v11, v3

    move-object v12, v7

    invoke-static {v8, v9, v10, v11, v12}, Lcom/caverock/androidsvg/CSSParser;->ruleMatch(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v8

    move v0, v8

    goto :goto_0
.end method

.method protected static ruleMatch(Lcom/caverock/androidsvg/CSSParser$Selector;Lcom/caverock/androidsvg/SVG$SvgElementBase;)Z
    .locals 11

    .prologue
    .line 775
    move-object v0, p0

    move-object v1, p1

    new-instance v5, Ljava/util/ArrayList;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 776
    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$SvgElementBase;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    move-object v3, v5

    .line 777
    :goto_0
    move-object v5, v3

    if-nez v5, :cond_0

    .line 782
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    .line 785
    move-object v5, v0

    invoke-virtual {v5}, Lcom/caverock/androidsvg/CSSParser$Selector;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 786
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/caverock/androidsvg/CSSParser$Selector;->get(I)Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    move-result-object v5

    move-object v6, v2

    move v7, v4

    move-object v8, v1

    invoke-static {v5, v6, v7, v8}, Lcom/caverock/androidsvg/CSSParser;->selectorMatch(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v5

    move v0, v5

    .line 790
    :goto_1
    return v0

    .line 778
    :cond_0
    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v3

    invoke-interface {v5, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 779
    move-object v5, v3

    check-cast v5, Lcom/caverock/androidsvg/SVG$SvgObject;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    move-object v3, v5

    goto :goto_0

    .line 790
    :cond_1
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Lcom/caverock/androidsvg/CSSParser$Selector;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move-object v7, v2

    move v8, v4

    move-object v9, v1

    invoke-static {v5, v6, v7, v8, v9}, Lcom/caverock/androidsvg/CSSParser;->ruleMatch(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v5

    move v0, v5

    goto :goto_1
.end method

.method private static ruleMatchOnAncestors(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;I)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/CSSParser$Selector;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVG$SvgContainer;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 832
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move-object v8, v0

    move v9, v1

    invoke-virtual {v8, v9}, Lcom/caverock/androidsvg/CSSParser$Selector;->get(I)Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    move-result-object v8

    move-object v4, v8

    .line 833
    move-object v8, v2

    move v9, v3

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    move-object v5, v8

    .line 835
    move-object v8, v4

    move-object v9, v2

    move v10, v3

    move-object v11, v5

    invoke-static {v8, v9, v10, v11}, Lcom/caverock/androidsvg/CSSParser;->selectorMatch(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 836
    const/4 v8, 0x0

    move v0, v8

    .line 860
    :goto_0
    return v0

    .line 839
    :cond_0
    move-object v8, v4

    iget-object v8, v8, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/caverock/androidsvg/CSSParser$Combinator;

    sget-object v9, Lcom/caverock/androidsvg/CSSParser$Combinator;->DESCENDANT:Lcom/caverock/androidsvg/CSSParser$Combinator;

    if-ne v8, v9, :cond_3

    .line 841
    move v8, v1

    if-nez v8, :cond_2

    .line 842
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 845
    :cond_1
    move-object v8, v0

    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move-object v10, v2

    add-int/lit8 v3, v3, -0x1

    move v11, v3

    invoke-static {v8, v9, v10, v11}, Lcom/caverock/androidsvg/CSSParser;->ruleMatchOnAncestors(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 846
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 844
    :cond_2
    move v8, v3

    if-gtz v8, :cond_1

    .line 848
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 850
    :cond_3
    move-object v8, v4

    iget-object v8, v8, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/caverock/androidsvg/CSSParser$Combinator;

    sget-object v9, Lcom/caverock/androidsvg/CSSParser$Combinator;->CHILD:Lcom/caverock/androidsvg/CSSParser$Combinator;

    if-ne v8, v9, :cond_4

    .line 852
    move-object v8, v0

    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move-object v10, v2

    move v11, v3

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    invoke-static {v8, v9, v10, v11}, Lcom/caverock/androidsvg/CSSParser;->ruleMatchOnAncestors(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;I)Z

    move-result v8

    move v0, v8

    goto :goto_0

    .line 856
    :cond_4
    move-object v8, v2

    move v9, v3

    move-object v10, v5

    invoke-static {v8, v9, v10}, Lcom/caverock/androidsvg/CSSParser;->getChildPosition(Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)I

    move-result v8

    move v6, v8

    .line 857
    move v8, v6

    if-gtz v8, :cond_5

    .line 858
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 859
    :cond_5
    move-object v8, v5

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$SvgElementBase;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v8}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object v8

    move v9, v6

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    move-object v7, v8

    .line 860
    move-object v8, v0

    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move-object v10, v2

    move v11, v3

    move-object v12, v7

    invoke-static {v8, v9, v10, v11, v12}, Lcom/caverock/androidsvg/CSSParser;->ruleMatch(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v8

    move v0, v8

    goto :goto_0
.end method

.method private static selectorMatch(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/CSSParser$SimpleSelector;",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVG$SvgContainer;",
            ">;I",
            "Lcom/caverock/androidsvg/SVG$SvgElementBase;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 885
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 887
    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    const-string v7, "G"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 889
    move-object v6, v3

    instance-of v6, v6, Lcom/caverock/androidsvg/SVG$Group;

    if-nez v6, :cond_1

    .line 890
    const/4 v6, 0x0

    move v0, v6

    .line 938
    :goto_0
    return v0

    .line 893
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 895
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 901
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->attribs:Ljava/util/List;

    if-eqz v6, :cond_3

    .line 903
    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->attribs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v5, v6

    :cond_2
    move-object v6, v5

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_6

    .line 926
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    if-eqz v6, :cond_5

    .line 927
    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v5, v6

    :cond_4
    move-object v6, v5

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_a

    .line 938
    :cond_5
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 903
    :cond_6
    move-object v6, v5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/caverock/androidsvg/CSSParser$Attrib;

    move-object v4, v6

    .line 905
    move-object v6, v4

    iget-object v6, v6, Lcom/caverock/androidsvg/CSSParser$Attrib;->name:Ljava/lang/String;

    const-string v7, "id"

    if-ne v6, v7, :cond_7

    .line 907
    move-object v6, v4

    iget-object v6, v6, Lcom/caverock/androidsvg/CSSParser$Attrib;->value:Ljava/lang/String;

    move-object v7, v3

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$SvgElementBase;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 908
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 910
    :cond_7
    move-object v6, v4

    iget-object v6, v6, Lcom/caverock/androidsvg/CSSParser$Attrib;->name:Ljava/lang/String;

    const-string v7, "class"

    if-ne v6, v7, :cond_9

    .line 912
    move-object v6, v3

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$SvgElementBase;->classNames:Ljava/util/List;

    if-nez v6, :cond_8

    .line 913
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 914
    :cond_8
    move-object v6, v3

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$SvgElementBase;->classNames:Ljava/util/List;

    move-object v7, v4

    iget-object v7, v7, Lcom/caverock/androidsvg/CSSParser$Attrib;->value:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 915
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    .line 920
    :cond_9
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    .line 927
    :cond_a
    move-object v6, v5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v4, v6

    .line 928
    move-object v6, v4

    const-string v7, "first-child"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 929
    move-object v6, v1

    move v7, v2

    move-object v8, v3

    invoke-static {v6, v7, v8}, Lcom/caverock/androidsvg/CSSParser;->getChildPosition(Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)I

    move-result v6

    if-eqz v6, :cond_4

    .line 930
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    .line 932
    :cond_b
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0
.end method

.method private skipAtRule(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)V
    .locals 6

    .prologue
    .line 619
    move-object v0, p0

    move-object v1, p1

    const/4 v4, 0x0

    move v2, v4

    .line 620
    :cond_0
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 632
    :goto_1
    return-void

    .line 622
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v3, v4

    .line 623
    move v4, v3

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_2

    move v4, v2

    if-nez v4, :cond_2

    .line 624
    goto :goto_1

    .line 625
    :cond_2
    move v4, v3

    const/16 v5, 0x7b

    if-ne v4, v5, :cond_3

    .line 626
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 627
    :cond_3
    move v4, v3

    const/16 v5, 0x7d

    if-ne v4, v5, :cond_0

    move v4, v2

    if-lez v4, :cond_0

    .line 628
    add-int/lit8 v2, v2, -0x1

    move v4, v2

    if-nez v4, :cond_0

    .line 629
    goto :goto_1
.end method

.method private static varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 313
    move-object v0, p0

    move-object v1, p1

    const-string v2, "AndroidSVG CSSParser"

    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 314
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$Ruleset;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 290
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 291
    move-object v3, v2

    invoke-virtual {v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 293
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/caverock/androidsvg/CSSParser;->parseRuleset(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/CSSParser$Ruleset;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method
