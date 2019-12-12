.class public Lcom/caverock/androidsvg/SVG$PathDefinition;
.super Ljava/lang/Object;
.source "SVG.java"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$PathInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PathDefinition"
.end annotation


# static fields
.field private static final ARCTO:B = 0x4t

.field private static final CLOSE:B = 0x8t

.field private static final CUBICTO:B = 0x2t

.field private static final LINETO:B = 0x1t

.field private static final MOVETO:B = 0x0t

.field private static final QUADTO:B = 0x3t


# instance fields
.field private commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private coords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 1923
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1912
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:Ljava/util/List;

    .line 1913
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:Ljava/util/List;

    .line 1925
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:Ljava/util/List;

    .line 1926
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:Ljava/util/List;

    .line 1927
    return-void
.end method


# virtual methods
.method public arcTo(FFFZZFF)V
    .locals 11

    .prologue
    .line 1981
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    const/4 v9, 0x4

    move v10, v4

    if-eqz v10, :cond_0

    const/4 v10, 0x2

    :goto_0
    or-int/2addr v9, v10

    move v10, v5

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    :goto_1
    or-int/2addr v9, v10

    move v8, v9

    .line 1982
    move-object v9, v0

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:Ljava/util/List;

    move v10, v8

    int-to-byte v10, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 1983
    move-object v9, v0

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:Ljava/util/List;

    move v10, v1

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 1984
    move-object v9, v0

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:Ljava/util/List;

    move v10, v2

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 1985
    move-object v9, v0

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:Ljava/util/List;

    move v10, v3

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 1986
    move-object v9, v0

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:Ljava/util/List;

    move v10, v6

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 1987
    move-object v9, v0

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:Ljava/util/List;

    move v10, v7

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 1988
    return-void

    .line 1981
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public close()V
    .locals 3

    .prologue
    .line 1994
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:Ljava/util/List;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 1995
    return-void
.end method

.method public cubicTo(FFFFFF)V
    .locals 9

    .prologue
    .line 1957
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, v0

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:Ljava/util/List;

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 1958
    move-object v7, v0

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:Ljava/util/List;

    move v8, v1

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 1959
    move-object v7, v0

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:Ljava/util/List;

    move v8, v2

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 1960
    move-object v7, v0

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:Ljava/util/List;

    move v8, v3

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 1961
    move-object v7, v0

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:Ljava/util/List;

    move v8, v4

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 1962
    move-object v7, v0

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:Ljava/util/List;

    move v8, v5

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 1963
    move-object v7, v0

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:Ljava/util/List;

    move v8, v6

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 1964
    return-void
.end method

.method public enumeratePath(Lcom/caverock/androidsvg/SVG$PathInterface;)V
    .locals 15

    .prologue
    .line 2000
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v7, v0

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v2, v7

    .line 2002
    move-object v7, v0

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v4, v7

    :goto_0
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 2027
    return-void

    .line 2002
    :cond_0
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    move v3, v7

    .line 2004
    move v7, v3

    packed-switch v7, :pswitch_data_0

    .line 2022
    :pswitch_0
    move v7, v3

    const/4 v8, 0x2

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    :goto_1
    move v5, v7

    .line 2023
    move v7, v3

    const/4 v8, 0x1

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    :goto_2
    move v6, v7

    .line 2024
    move-object v7, v1

    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    move-object v9, v2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    move-object v10, v2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    move v11, v5

    move v12, v6

    move-object v13, v2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    move-object v14, v2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-interface/range {v7 .. v14}, Lcom/caverock/androidsvg/SVG$PathInterface;->arcTo(FFFZZFF)V

    goto :goto_0

    .line 2007
    :pswitch_1
    move-object v7, v1

    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    move-object v9, v2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-interface {v7, v8, v9}, Lcom/caverock/androidsvg/SVG$PathInterface;->moveTo(FF)V

    .line 2008
    goto :goto_0

    .line 2010
    :pswitch_2
    move-object v7, v1

    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    move-object v9, v2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-interface {v7, v8, v9}, Lcom/caverock/androidsvg/SVG$PathInterface;->lineTo(FF)V

    .line 2011
    goto/16 :goto_0

    .line 2013
    :pswitch_3
    move-object v7, v1

    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    move-object v9, v2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    move-object v10, v2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    move-object v11, v2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    move-object v12, v2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    move-object v13, v2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-interface/range {v7 .. v13}, Lcom/caverock/androidsvg/SVG$PathInterface;->cubicTo(FFFFFF)V

    .line 2014
    goto/16 :goto_0

    .line 2016
    :pswitch_4
    move-object v7, v1

    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    move-object v9, v2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    move-object v10, v2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    move-object v11, v2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-interface {v7, v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVG$PathInterface;->quadTo(FFFF)V

    .line 2017
    goto/16 :goto_0

    .line 2019
    :pswitch_5
    move-object v7, v1

    invoke-interface {v7}, Lcom/caverock/androidsvg/SVG$PathInterface;->close()V

    .line 2020
    goto/16 :goto_0

    .line 2022
    :cond_1
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 2023
    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 2004
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 1932
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public lineTo(FF)V
    .locals 5

    .prologue
    .line 1948
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:Ljava/util/List;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 1949
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:Ljava/util/List;

    move v4, v1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 1950
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:Ljava/util/List;

    move v4, v2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 1951
    return-void
.end method

.method public moveTo(FF)V
    .locals 5

    .prologue
    .line 1939
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:Ljava/util/List;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 1940
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:Ljava/util/List;

    move v4, v1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 1941
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:Ljava/util/List;

    move v4, v2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 1942
    return-void
.end method

.method public quadTo(FFFF)V
    .locals 7

    .prologue
    .line 1970
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:Ljava/util/List;

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1971
    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:Ljava/util/List;

    move v6, v1

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1972
    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:Ljava/util/List;

    move v6, v2

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1973
    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:Ljava/util/List;

    move v6, v3

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1974
    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:Ljava/util/List;

    move v6, v4

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1975
    return-void
.end method
