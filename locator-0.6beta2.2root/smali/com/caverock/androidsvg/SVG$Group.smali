.class public Lcom/caverock/androidsvg/SVG$Group;
.super Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;
.source "SVG.java"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$HasTransform;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Group"
.end annotation


# instance fields
.field public transform:Landroid/graphics/Matrix;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 1528
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 4

    .prologue
    .line 1533
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/caverock/androidsvg/SVG$Group;->transform:Landroid/graphics/Matrix;

    return-void
.end method
