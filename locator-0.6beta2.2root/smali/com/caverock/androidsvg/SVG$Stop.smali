.class public Lcom/caverock/androidsvg/SVG$Stop;
.super Lcom/caverock/androidsvg/SVG$SvgElementBase;
.source "SVG.java"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$SvgContainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Stop"
.end annotation


# instance fields
.field public offset:Ljava/lang/Float;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 1778
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgElementBase;-><init>()V

    return-void
.end method


# virtual methods
.method public addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1787
    return-void
.end method

.method public getChildren()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVG$SvgObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1785
    move-object v0, p0

    invoke-static {}, Lcom/caverock/androidsvg/SVG;->access$0()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
