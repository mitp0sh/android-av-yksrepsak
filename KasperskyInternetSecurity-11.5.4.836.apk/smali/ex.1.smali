.class public final Lex;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lex;->a:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lex;->b:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static a(Ljava/lang/String;)Lex;
    .locals 5

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0}, LbC;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-object v1

    .line 21
    :cond_1
    const-string v0, "amazonaws.com/"

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 22
    if-eq v0, v3, :cond_0

    .line 26
    const-string v2, ".s3"

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 27
    if-eq v2, v3, :cond_2

    if-ge v2, v0, :cond_2

    .line 28
    const-string v3, "://"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 29
    add-int/lit8 v3, v3, 0x3

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 31
    add-int/lit8 v0, v0, 0xe

    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    :goto_1
    invoke-static {v0}, LbC;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, LbC;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 48
    new-instance v1, Lex;

    invoke-direct {v1, v2, v0}, Lex;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_2
    add-int/lit8 v0, v0, 0xe

    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 40
    const-string v2, "/"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 41
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 42
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    move-object v0, v1

    move-object v2, v1

    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lex;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lex;->b:Ljava/lang/String;

    return-object v0
.end method
