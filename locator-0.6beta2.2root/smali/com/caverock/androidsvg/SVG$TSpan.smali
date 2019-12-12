.class public Lcom/caverock/androidsvg/SVG$TSpan;
.super Lcom/caverock/androidsvg/SVG$TextPositionedContainer;
.source "SVG.java"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$TextChild;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TSpan"
.end annotation


# instance fields
.field private textRoot:Lcom/caverock/androidsvg/SVG$TextRoot;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 1669
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;
    .locals 2

    .prologue
    .line 1676
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$TSpan;->textRoot:Lcom/caverock/androidsvg/SVG$TextRoot;

    move-object v0, v1

    return-object v0
.end method

.method public setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V
    .locals 4

    .prologue
    .line 1674
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/caverock/androidsvg/SVG$TSpan;->textRoot:Lcom/caverock/androidsvg/SVG$TextRoot;

    return-void
.end method
