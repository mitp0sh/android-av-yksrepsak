.class public LeE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/kaspersky/components/ucp/UcpCommandError;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, LeE;->a:I

    .line 14
    iput-object p1, p0, LeE;->b:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kaspersky/components/ucp/UcpCommandError;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p2}, Lcom/kaspersky/components/ucp/UcpCommandError;->ordinal()I

    move-result v0

    iput v0, p0, LeE;->a:I

    .line 19
    iput-object p1, p0, LeE;->b:Ljava/lang/String;

    .line 20
    iput-object p2, p0, LeE;->c:Lcom/kaspersky/components/ucp/UcpCommandError;

    .line 21
    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, LeE;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, LeE;->a:I

    return v0
.end method

.method public final e()Lcom/kaspersky/components/ucp/UcpCommandError;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, LeE;->c:Lcom/kaspersky/components/ucp/UcpCommandError;

    return-object v0
.end method
