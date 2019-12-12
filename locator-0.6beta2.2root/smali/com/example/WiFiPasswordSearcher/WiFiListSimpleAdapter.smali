.class Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;
.super Landroid/widget/SimpleAdapter;
.source "MyActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter$100000001;
    }
.end annotation


# static fields
.field private static SvgImageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DataList:Ljava/util/List;

.field private context:Landroid/content/Context;

.field private onKeyClick:Landroid/view/View$OnClickListener;


# direct methods
.method static final constructor <clinit>()V
    .locals 5

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;->SvgImageCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    move-object v11, v4

    move-object v12, v5

    invoke-direct/range {v7 .. v12}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    move-object v7, v0

    new-instance v8, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter$100000001;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    invoke-direct {v9, v10}, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter$100000001;-><init>(Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;)V

    iput-object v8, v7, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;->onKeyClick:Landroid/view/View$OnClickListener;

    .line 61
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;->context:Landroid/content/Context;

    .line 62
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;->DataList:Ljava/util/List;

    return-void
.end method

.method private DeleteInTextTags(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_0

    move-object v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "*["

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 68
    move-object v5, v1

    const/4 v6, 0x2

    move-object v7, v1

    const-string v8, "]*"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 70
    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    add-int/lit8 v6, v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 72
    :cond_0
    move-object v5, v1

    move-object v0, v5

    return-object v0
.end method

.method private ParseInTextTags(Landroid/widget/TextView;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    move-object v1, p1

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 79
    move-object v9, v3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_6

    move-object v9, v3

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "*["

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 81
    move-object v9, v3

    const/4 v10, 0x2

    move-object v11, v3

    const-string v12, "]*"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 82
    move-object v9, v1

    move-object v10, v3

    move-object v11, v4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x4

    add-int/lit8 v11, v11, 0x4

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    move-object v9, v4

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x0

    if-le v9, v10, :cond_0

    .line 86
    move-object v9, v4

    const/4 v10, 0x0

    move-object v11, v4

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 87
    move-object v9, v4

    move-object v10, v4

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 89
    move-object v9, v5

    const-string v10, "color"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 91
    move-object v9, v6

    move-object v7, v9

    move-object v9, v7

    const-string v10, "red"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 94
    move-object v9, v1

    const/16 v10, 0x99

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    move-object v9, v7

    const-string v10, "green"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 97
    move-object v9, v1

    const v10, -0xff0100

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    goto :goto_0

    :cond_2
    move-object v9, v7

    const-string v10, "greendark"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 100
    move-object v9, v1

    const/4 v10, 0x0

    const/16 v11, 0x99

    const/16 v12, 0x4c

    invoke-static {v10, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    goto :goto_0

    :cond_3
    move-object v9, v7

    const-string v10, "blue"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 103
    move-object v9, v1

    const v10, -0xffff01

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    goto :goto_0

    :cond_4
    move-object v9, v7

    const-string v10, "yellow"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 106
    move-object v9, v1

    const/16 v10, 0x99

    const/16 v11, 0x99

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    goto :goto_0

    :cond_5
    move-object v9, v7

    const-string v10, "gray"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 109
    move-object v9, v1

    const/16 v10, 0x69

    const/16 v11, 0x69

    const/16 v12, 0x69

    invoke-static {v10, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    goto :goto_0

    .line 116
    :cond_6
    move-object v9, v1

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method static synthetic access$1000003(Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;->DeleteInTextTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method static synthetic access$1000008(Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;II)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;->passwordChoose(II)V

    return-void
.end method

.method static synthetic access$L1000000(Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;)Landroid/content/Context;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;->context:Landroid/content/Context;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$S1000000(Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;Landroid/content/Context;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method private passwordChoose(II)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 259
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    const/16 v17, 0x0

    check-cast v17, Landroid/view/View;

    move-object/from16 v6, v17

    .line 260
    const/16 v17, 0x0

    move/from16 v7, v17

    :goto_0
    move/from16 v17, v7

    sget-object v18, Lcom/example/WiFiPasswordSearcher/MyActivity;->WiFiList:Landroid/widget/ListView;

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ListView;->getChildCount()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_0

    .line 270
    :goto_1
    move-object/from16 v17, v6

    if-nez v17, :cond_2

    .line 294
    :goto_2
    return-void

    .line 262
    :cond_0
    sget-object v17, Lcom/example/WiFiPasswordSearcher/MyActivity;->WiFiList:Landroid/widget/ListView;

    move/from16 v18, v7

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v6, v17

    .line 263
    move-object/from16 v17, v6

    const v18, 0x7f070015

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v8, v17

    .line 264
    move-object/from16 v17, v8

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v9, v17

    .line 265
    move/from16 v17, v9

    move/from16 v18, v3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 266
    const/16 v17, 0x0

    check-cast v17, Landroid/view/View;

    move-object/from16 v6, v17

    .line 260
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 268
    :cond_1
    goto :goto_1

    .line 273
    :cond_2
    sget-object v17, Lcom/example/WiFiPasswordSearcher/MyActivity;->WiFiKeys:Ljava/util/ArrayList;

    move/from16 v18, v3

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/example/WiFiPasswordSearcher/APData;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/APData;->Keys:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v7, v17

    .line 274
    sget-object v17, Lcom/example/WiFiPasswordSearcher/MyActivity;->WiFiKeys:Ljava/util/ArrayList;

    move/from16 v18, v3

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/example/WiFiPasswordSearcher/APData;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/APData;->Generated:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v8, v17

    .line 275
    sget-object v17, Lcom/example/WiFiPasswordSearcher/MyActivity;->WiFiKeys:Ljava/util/ArrayList;

    move/from16 v18, v3

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/example/WiFiPasswordSearcher/APData;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/APData;->WPS:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v9, v17

    .line 276
    move-object/from16 v17, v7

    move/from16 v18, v4

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v10, v17

    .line 277
    move-object/from16 v17, v8

    move/from16 v18, v4

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Boolean;

    move-object/from16 v11, v17

    .line 278
    move-object/from16 v17, v9

    move/from16 v18, v4

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v12, v17

    .line 279
    move-object/from16 v17, v7

    move/from16 v18, v4

    move-object/from16 v19, v7

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 282
    move-object/from16 v17, v7

    const/16 v18, 0x0

    move-object/from16 v19, v10

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 283
    move-object/from16 v17, v8

    move/from16 v18, v4

    move-object/from16 v19, v8

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 284
    move-object/from16 v17, v8

    const/16 v18, 0x0

    move-object/from16 v19, v11

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 285
    move-object/from16 v17, v9

    move/from16 v18, v4

    move-object/from16 v19, v9

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 286
    move-object/from16 v17, v9

    const/16 v18, 0x0

    move-object/from16 v19, v12

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 288
    move-object/from16 v17, v6

    const v18, 0x7f070017

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v14, v17

    .line 289
    move-object/from16 v17, v11

    check-cast v17, Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_3

    const-string v17, "*[color:red]*"

    :goto_3
    move-object/from16 v13, v17

    .line 290
    move-object/from16 v17, v14

    new-instance v18, Ljava/lang/StringBuffer;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v19, v13

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v19, v10

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    move-object/from16 v17, v2

    move-object/from16 v18, v14

    invoke-direct/range {v17 .. v18}, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;->ParseInTextTags(Landroid/widget/TextView;)V

    .line 292
    move-object/from16 v17, v6

    const v18, 0x7f070018

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v15, v17

    .line 293
    move-object/from16 v17, v15

    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_4

    const-string v18, "*[color:gray]*[unknown]"

    :goto_4
    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    move-object/from16 v17, v2

    move-object/from16 v18, v15

    invoke-direct/range {v17 .. v18}, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;->ParseInTextTags(Landroid/widget/TextView;)V

    goto/16 :goto_2

    .line 289
    :cond_3
    const-string v17, "*[color:green]*"

    goto :goto_3

    .line 293
    :cond_4
    new-instance v18, Ljava/lang/StringBuffer;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const-string v19, "*[color:blue]*"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v19, v12

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_4
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 25

    .prologue
    .line 122
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v21, v2

    move/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    invoke-super/range {v21 .. v24}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    move-object/from16 v7, v21

    .line 124
    move-object/from16 v21, v7

    const v22, 0x7f070010

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    move-object/from16 v8, v21

    .line 125
    move-object/from16 v21, v7

    const v22, 0x7f070011

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    move-object/from16 v9, v21

    .line 127
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;->DataList:Ljava/util/List;

    move-object/from16 v21, v0

    move/from16 v22, v3

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/HashMap;

    move-object/from16 v10, v21

    .line 129
    move-object/from16 v21, v10

    const-string v22, "CAPABILITY"

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v11, v21

    .line 131
    move-object/from16 v21, v8

    const/16 v22, 0x1

    const/16 v23, 0x0

    check-cast v23, Landroid/graphics/Paint;

    invoke-virtual/range {v21 .. v23}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 132
    move-object/from16 v21, v9

    const/16 v22, 0x1

    const/16 v23, 0x0

    check-cast v23, Landroid/graphics/Paint;

    invoke-virtual/range {v21 .. v23}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 134
    move-object/from16 v21, v11

    const-string v22, "WPA2"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 138
    sget-object v21, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;->SvgImageCache:Ljava/util/HashMap;

    const-string v22, "WPA2"

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/graphics/drawable/Drawable;

    move-object/from16 v13, v21

    .line 139
    move-object/from16 v21, v13

    if-nez v21, :cond_0

    .line 141
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f040003

    invoke-static/range {v21 .. v22}, Lcom/larvalabs/svgandroid/SVGParser;->getSVGFromResource(Landroid/content/res/Resources;I)Lcom/larvalabs/svgandroid/SVG;

    move-result-object v21

    move-object/from16 v12, v21

    .line 142
    move-object/from16 v21, v12

    invoke-virtual/range {v21 .. v21}, Lcom/larvalabs/svgandroid/SVG;->createPictureDrawable()Landroid/graphics/drawable/PictureDrawable;

    move-result-object v21

    move-object/from16 v13, v21

    .line 143
    sget-object v21, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;->SvgImageCache:Ljava/util/HashMap;

    const-string v22, "WPA2"

    move-object/from16 v23, v13

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 145
    :cond_0
    move-object/from16 v21, v8

    move-object/from16 v22, v13

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    :goto_0
    move-object/from16 v21, v11

    const-string v22, "WPS"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 183
    sget-object v21, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;->SvgImageCache:Ljava/util/HashMap;

    const-string v22, "WPS"

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/graphics/drawable/Drawable;

    move-object/from16 v13, v21

    .line 184
    move-object/from16 v21, v13

    if-nez v21, :cond_1

    .line 186
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f040005

    invoke-static/range {v21 .. v22}, Lcom/larvalabs/svgandroid/SVGParser;->getSVGFromResource(Landroid/content/res/Resources;I)Lcom/larvalabs/svgandroid/SVG;

    move-result-object v21

    move-object/from16 v12, v21

    .line 187
    move-object/from16 v21, v12

    invoke-virtual/range {v21 .. v21}, Lcom/larvalabs/svgandroid/SVG;->createPictureDrawable()Landroid/graphics/drawable/PictureDrawable;

    move-result-object v21

    move-object/from16 v13, v21

    .line 188
    sget-object v21, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;->SvgImageCache:Ljava/util/HashMap;

    const-string v22, "WPS"

    move-object/from16 v23, v13

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 190
    :cond_1
    move-object/from16 v21, v9

    move-object/from16 v22, v13

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    :goto_1
    move-object/from16 v21, v7

    const v22, 0x7f070017

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v13, v21

    .line 198
    move-object/from16 v21, v7

    const v22, 0x7f070014

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v14, v21

    .line 199
    move-object/from16 v21, v7

    const v22, 0x7f070015

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v15, v21

    .line 200
    move-object/from16 v21, v7

    const v22, 0x7f070019

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v16, v21

    .line 201
    move-object/from16 v21, v7

    const v22, 0x7f070018

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v17, v21

    .line 202
    move-object/from16 v21, v7

    const v22, 0x7f070016

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    move-object/from16 v18, v21

    .line 204
    move-object/from16 v21, v18

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;->onKeyClick:Landroid/view/View$OnClickListener;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    move-object/from16 v21, v2

    move-object/from16 v22, v13

    invoke-direct/range {v21 .. v22}, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;->ParseInTextTags(Landroid/widget/TextView;)V

    .line 207
    move-object/from16 v21, v2

    move-object/from16 v22, v14

    invoke-direct/range {v21 .. v22}, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;->ParseInTextTags(Landroid/widget/TextView;)V

    .line 208
    move-object/from16 v21, v2

    move-object/from16 v22, v16

    invoke-direct/range {v21 .. v22}, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;->ParseInTextTags(Landroid/widget/TextView;)V

    .line 209
    move-object/from16 v21, v2

    move-object/from16 v22, v17

    invoke-direct/range {v21 .. v22}, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;->ParseInTextTags(Landroid/widget/TextView;)V

    .line 211
    move-object/from16 v21, v16

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v19, v21

    .line 212
    move-object/from16 v21, v18

    move/from16 v22, v19

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_9

    const/16 v22, 0x0

    :goto_2
    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 214
    move-object/from16 v21, v15

    move/from16 v22, v3

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    move-object/from16 v21, v7

    move-object/from16 v2, v21

    return-object v2

    .line 147
    :cond_2
    move-object/from16 v21, v11

    const-string v22, "WPA"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 149
    sget-object v21, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;->SvgImageCache:Ljava/util/HashMap;

    const-string v22, "WPA"

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/graphics/drawable/Drawable;

    move-object/from16 v13, v21

    .line 150
    move-object/from16 v21, v13

    if-nez v21, :cond_3

    .line 152
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f040004

    invoke-static/range {v21 .. v22}, Lcom/larvalabs/svgandroid/SVGParser;->getSVGFromResource(Landroid/content/res/Resources;I)Lcom/larvalabs/svgandroid/SVG;

    move-result-object v21

    move-object/from16 v12, v21

    .line 153
    move-object/from16 v21, v12

    invoke-virtual/range {v21 .. v21}, Lcom/larvalabs/svgandroid/SVG;->createPictureDrawable()Landroid/graphics/drawable/PictureDrawable;

    move-result-object v21

    move-object/from16 v13, v21

    .line 154
    sget-object v21, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;->SvgImageCache:Ljava/util/HashMap;

    const-string v22, "WPA"

    move-object/from16 v23, v13

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 156
    :cond_3
    move-object/from16 v21, v8

    move-object/from16 v22, v13

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 158
    :cond_4
    move-object/from16 v21, v11

    const-string v22, "WEP"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 160
    sget-object v21, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;->SvgImageCache:Ljava/util/HashMap;

    const-string v22, "WEP"

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/graphics/drawable/Drawable;

    move-object/from16 v13, v21

    .line 161
    move-object/from16 v21, v13

    if-nez v21, :cond_5

    .line 163
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f040002

    invoke-static/range {v21 .. v22}, Lcom/larvalabs/svgandroid/SVGParser;->getSVGFromResource(Landroid/content/res/Resources;I)Lcom/larvalabs/svgandroid/SVG;

    move-result-object v21

    move-object/from16 v12, v21

    .line 164
    move-object/from16 v21, v12

    invoke-virtual/range {v21 .. v21}, Lcom/larvalabs/svgandroid/SVG;->createPictureDrawable()Landroid/graphics/drawable/PictureDrawable;

    move-result-object v21

    move-object/from16 v13, v21

    .line 165
    sget-object v21, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;->SvgImageCache:Ljava/util/HashMap;

    const-string v22, "WEP"

    move-object/from16 v23, v13

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 167
    :cond_5
    move-object/from16 v21, v8

    move-object/from16 v22, v13

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 171
    :cond_6
    sget-object v21, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;->SvgImageCache:Ljava/util/HashMap;

    const-string v22, "OPEN"

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/graphics/drawable/Drawable;

    move-object/from16 v13, v21

    .line 172
    move-object/from16 v21, v13

    if-nez v21, :cond_7

    .line 174
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const/high16 v22, 0x7f040000

    invoke-static/range {v21 .. v22}, Lcom/larvalabs/svgandroid/SVGParser;->getSVGFromResource(Landroid/content/res/Resources;I)Lcom/larvalabs/svgandroid/SVG;

    move-result-object v21

    move-object/from16 v12, v21

    .line 175
    move-object/from16 v21, v12

    invoke-virtual/range {v21 .. v21}, Lcom/larvalabs/svgandroid/SVG;->createPictureDrawable()Landroid/graphics/drawable/PictureDrawable;

    move-result-object v21

    move-object/from16 v13, v21

    .line 176
    sget-object v21, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;->SvgImageCache:Ljava/util/HashMap;

    const-string v22, "OPEN"

    move-object/from16 v23, v13

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 178
    :cond_7
    move-object/from16 v21, v8

    move-object/from16 v22, v13

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 194
    :cond_8
    move-object/from16 v21, v9

    const v22, 0x106000d

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 212
    :cond_9
    const/16 v22, 0x1

    goto/16 :goto_2
.end method
