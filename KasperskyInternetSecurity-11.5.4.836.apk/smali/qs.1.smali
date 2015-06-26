.class public abstract Lqs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lqs;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lqs;
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lqs;->a:Lqs;

    if-nez v0, :cond_0

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 49
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 50
    new-instance v0, Lqt;

    invoke-direct {v0}, Lqt;-><init>()V

    sput-object v0, Lqs;->a:Lqs;

    .line 55
    :cond_0
    :goto_0
    sget-object v0, Lqs;->a:Lqs;

    return-object v0

    .line 52
    :cond_1
    new-instance v0, Lqu;

    invoke-direct {v0}, Lqu;-><init>()V

    sput-object v0, Lqs;->a:Lqs;

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Ljava/io/FileOutputStream;Ljava/util/Set;)Ljava/util/Set;
.end method

.method public abstract a(Landroid/content/Context;Ljava/io/RandomAccessFile;Ljava/util/Set;)Ljava/util/Set;
.end method

.method public abstract a(Landroid/content/Context;Ljava/io/FileInputStream;Ljava/util/Vector;)Ljava/util/Vector;
.end method

.method public a(Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(Landroid/content/ContentResolver;Ljava/util/List;Z)V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(Landroid/content/ContentResolver;Lqv;)V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(Landroid/content/ContentResolver;Z)V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 81
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract a(Landroid/content/Context;Ljava/util/Set;)Z
.end method
