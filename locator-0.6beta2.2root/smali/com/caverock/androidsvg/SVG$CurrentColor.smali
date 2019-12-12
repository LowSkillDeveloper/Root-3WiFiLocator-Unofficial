.class public Lcom/caverock/androidsvg/SVG$CurrentColor;
.super Lcom/caverock/androidsvg/SVG$SvgPaint;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CurrentColor"
.end annotation


# static fields
.field private static instance:Lcom/caverock/androidsvg/SVG$CurrentColor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1179
    new-instance v0, Lcom/caverock/androidsvg/SVG$CurrentColor;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$CurrentColor;-><init>()V

    sput-object v0, Lcom/caverock/androidsvg/SVG$CurrentColor;->instance:Lcom/caverock/androidsvg/SVG$CurrentColor;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 1181
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgPaint;-><init>()V

    .line 1183
    return-void
.end method

.method public static getInstance()Lcom/caverock/androidsvg/SVG$CurrentColor;
    .locals 1

    .prologue
    .line 1187
    sget-object v0, Lcom/caverock/androidsvg/SVG$CurrentColor;->instance:Lcom/caverock/androidsvg/SVG$CurrentColor;

    return-object v0
.end method
