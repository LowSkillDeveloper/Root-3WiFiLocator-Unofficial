.class public final enum Lcom/caverock/androidsvg/SVG$Style$FontStyle;
.super Ljava/lang/Enum;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG$Style;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FontStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/caverock/androidsvg/SVG$Style$FontStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/caverock/androidsvg/SVG$Style$FontStyle;

.field public static final enum Italic:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

.field public static final enum Normal:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

.field public static final enum Oblique:Lcom/caverock/androidsvg/SVG$Style$FontStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 1030
    new-instance v0, Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "Normal"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVG$Style$FontStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Normal:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 1031
    new-instance v0, Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "Italic"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVG$Style$FontStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Italic:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 1032
    new-instance v0, Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "Oblique"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVG$Style$FontStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Oblique:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 1028
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Normal:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Italic:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Oblique:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    aput-object v3, v1, v2

    sput-object v0, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->ENUM$VALUES:[Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 1028
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FontStyle;
    .locals 3

    .prologue
    .line 1
    move-object v0, p0

    const-class v1, Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    move-object v0, v1

    return-object v0
.end method

.method public static values()[Lcom/caverock/androidsvg/SVG$Style$FontStyle;
    .locals 9

    .prologue
    .line 1
    sget-object v3, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->ENUM$VALUES:[Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v0, v4

    const/4 v4, 0x0

    move-object v5, v0

    array-length v5, v5

    move v8, v5

    move v5, v8

    move v6, v8

    move v1, v6

    new-array v5, v5, [Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v2, v6

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method
