.class public Lcom/larvalabs/svgandroid/SVGParser$CopyInputStream;
.super Ljava/lang/Object;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/larvalabs/svgandroid/SVGParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CopyInputStream"
.end annotation


# instance fields
.field private _copy:Ljava/io/ByteArrayOutputStream;

.field private _is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 5

    .prologue
    .line 872
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 874
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/larvalabs/svgandroid/SVGParser$CopyInputStream;->_is:Ljava/io/InputStream;

    .line 878
    move-object v3, v0

    :try_start_0
    invoke-direct {v3}, Lcom/larvalabs/svgandroid/SVGParser$CopyInputStream;->copy()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move v2, v3

    .line 887
    :goto_0
    return-void

    .line 881
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 883
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "IOException in CopyInputStream"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 884
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private copy()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 891
    move-object v0, p0

    move-object v4, v0

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v5, v4, Lcom/larvalabs/svgandroid/SVGParser$CopyInputStream;->_copy:Ljava/io/ByteArrayOutputStream;

    .line 892
    const/4 v4, 0x0

    move v1, v4

    .line 893
    const/4 v4, 0x0

    move v2, v4

    .line 894
    const/16 v4, 0x100

    new-array v4, v4, [B

    move-object v3, v4

    .line 896
    :goto_0
    const/4 v4, -0x1

    move-object v5, v0

    iget-object v5, v5, Lcom/larvalabs/svgandroid/SVGParser$CopyInputStream;->_is:Ljava/io/InputStream;

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v8, v5

    move v5, v8

    move v6, v8

    move v2, v6

    if-ne v4, v5, :cond_0

    .line 904
    move-object v4, v0

    iget-object v4, v4, Lcom/larvalabs/svgandroid/SVGParser$CopyInputStream;->_copy:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 906
    move v4, v1

    move v0, v4

    return v0

    .line 898
    :cond_0
    move v4, v1

    move-object v5, v3

    array-length v5, v5

    add-int/2addr v4, v5

    move v1, v4

    .line 902
    move-object v4, v0

    iget-object v4, v4, Lcom/larvalabs/svgandroid/SVGParser$CopyInputStream;->_copy:Ljava/io/ByteArrayOutputStream;

    move-object v5, v3

    const/4 v6, 0x0

    move v7, v2

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method


# virtual methods
.method public getCopy()Ljava/io/ByteArrayInputStream;
    .locals 5

    .prologue
    .line 911
    move-object v0, p0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Lcom/larvalabs/svgandroid/SVGParser$CopyInputStream;->_copy:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v1

    return-object v0
.end method
