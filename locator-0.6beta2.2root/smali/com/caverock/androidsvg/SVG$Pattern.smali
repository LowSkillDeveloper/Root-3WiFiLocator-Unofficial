.class public Lcom/caverock/androidsvg/SVG$Pattern;
.super Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;
.source "SVG.java"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$NotDirectlyRendered;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Pattern"
.end annotation


# instance fields
.field public height:Lcom/caverock/androidsvg/SVG$Length;

.field public href:Ljava/lang/String;

.field public patternContentUnitsAreUser:Ljava/lang/Boolean;

.field public patternTransform:Landroid/graphics/Matrix;

.field public patternUnitsAreUser:Ljava/lang/Boolean;

.field public width:Lcom/caverock/androidsvg/SVG$Length;

.field public x:Lcom/caverock/androidsvg/SVG$Length;

.field public y:Lcom/caverock/androidsvg/SVG$Length;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 1816
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;-><init>()V

    return-void
.end method
