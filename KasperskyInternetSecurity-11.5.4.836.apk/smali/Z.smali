.class public final LZ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Laa;


# direct methods
.method public constructor <init>(IILaa;)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, LZ;->a:I

    .line 13
    const/16 v0, -0x1e

    iput v0, p0, LZ;->b:I

    .line 14
    iput-object p3, p0, LZ;->c:Laa;

    .line 15
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, LZ;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, LZ;->b:I

    return v0
.end method

.method public final c()Laa;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, LZ;->c:Laa;

    return-object v0
.end method
