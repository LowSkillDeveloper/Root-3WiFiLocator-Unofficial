.class public Lcom/caverock/androidsvg/SVG$CSSClipRect;
.super Ljava/lang/Object;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CSSClipRect"
.end annotation


# instance fields
.field public bottom:Lcom/caverock/androidsvg/SVG$Length;

.field public left:Lcom/caverock/androidsvg/SVG$Length;

.field public right:Lcom/caverock/androidsvg/SVG$Length;

.field public top:Lcom/caverock/androidsvg/SVG$Length;


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V
    .locals 7

    .prologue
    .line 1359
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 1361
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$CSSClipRect;->top:Lcom/caverock/androidsvg/SVG$Length;

    .line 1362
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$CSSClipRect;->right:Lcom/caverock/androidsvg/SVG$Length;

    .line 1363
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$CSSClipRect;->bottom:Lcom/caverock/androidsvg/SVG$Length;

    .line 1364
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/caverock/androidsvg/SVG$CSSClipRect;->left:Lcom/caverock/androidsvg/SVG$Length;

    .line 1365
    return-void
.end method
