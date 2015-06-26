.class abstract Ljp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/io/File;

.field protected b:Ljava/util/List;

.field protected final c:Ljava/io/File;

.field protected d:I


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Ljp;->a:Ljava/io/File;

    .line 16
    iput-object p2, p0, Ljp;->c:Ljava/io/File;

    .line 17
    return-void
.end method


# virtual methods
.method abstract a()I
.end method

.method b()V
    .locals 0

    .prologue
    .line 24
    invoke-virtual {p0}, Ljp;->c()V

    .line 25
    invoke-virtual {p0}, Ljp;->e()I

    .line 26
    return-void
.end method

.method c()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Ljp;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Ljp;->b:Ljava/util/List;

    iget-object v1, p0, Ljp;->c:Ljava/io/File;

    invoke-static {v0, v1}, Lbh;->a(Ljava/util/List;Ljava/io/File;)V

    .line 58
    :cond_0
    return-void
.end method

.method d()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Ljp;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Ljp;->b:Ljava/util/List;

    invoke-static {v0}, Lbh;->a(Ljava/util/List;)V

    .line 64
    :cond_0
    return-void
.end method

.method abstract e()I
.end method

.method public final f()I
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p0}, Ljp;->a()I

    move-result v0

    iput v0, p0, Ljp;->d:I

    .line 30
    iget v0, p0, Ljp;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 31
    invoke-virtual {p0}, Ljp;->c()V

    .line 32
    iget v0, p0, Ljp;->d:I

    .line 51
    :goto_0
    return v0

    .line 34
    :cond_0
    invoke-virtual {p0}, Ljp;->e()I

    move-result v0

    iput v0, p0, Ljp;->d:I

    .line 36
    iget v0, p0, Ljp;->d:I

    packed-switch v0, :pswitch_data_0

    .line 47
    :pswitch_0
    invoke-virtual {p0}, Ljp;->b()V

    .line 51
    :goto_1
    iget v0, p0, Ljp;->d:I

    goto :goto_0

    .line 39
    :pswitch_1
    invoke-virtual {p0}, Ljp;->d()V

    goto :goto_1

    .line 43
    :pswitch_2
    invoke-virtual {p0}, Ljp;->c()V

    .line 44
    invoke-virtual {p0}, Ljp;->e()I

    goto :goto_1

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
