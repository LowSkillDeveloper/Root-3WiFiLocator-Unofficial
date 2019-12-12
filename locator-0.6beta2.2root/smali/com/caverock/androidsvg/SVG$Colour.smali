.class public Lcom/caverock/androidsvg/SVG$Colour;
.super Lcom/caverock/androidsvg/SVG$SvgPaint;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Colour"
.end annotation


# static fields
.field public static final BLACK:Lcom/caverock/androidsvg/SVG$Colour;


# instance fields
.field public colour:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 1163
    new-instance v0, Lcom/caverock/androidsvg/SVG$Colour;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Colour;->BLACK:Lcom/caverock/androidsvg/SVG$Colour;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 1165
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lcom/caverock/androidsvg/SVG$SvgPaint;-><init>()V

    .line 1167
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    .line 1168
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1172
    move-object v0, p0

    const-string v1, "#%06x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget v5, v5, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
