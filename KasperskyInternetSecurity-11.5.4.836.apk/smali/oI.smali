.class public final LoI;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:LoB;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, LoB;

    invoke-direct {v0, p1}, LoB;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LoI;->a:LoB;

    .line 69
    return-void
.end method


# virtual methods
.method public final a()LoA;
    .locals 3

    .prologue
    .line 115
    new-instance v0, LoA;

    iget-object v1, p0, LoI;->a:LoB;

    invoke-direct {v0, v1}, LoA;-><init>(LoB;)V

    .line 117
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 118
    iget-object v2, p0, LoI;->a:LoB;

    invoke-virtual {v2, v1}, LoB;->a(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {v0, v1}, LoA;->setArguments(Landroid/os/Bundle;)V

    .line 121
    return-object v0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, LoI;->a:LoB;

    const v1, 0x7f070201

    invoke-static {v0, v1}, LoB;->a(LoB;I)I

    .line 73
    return-void
.end method

.method public final a(ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, LoI;->a:LoB;

    const v1, 0x7f070204

    invoke-static {v0, v1}, LoB;->c(LoB;I)I

    .line 85
    iget-object v0, p0, LoI;->a:LoB;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LoB;->a(LoB;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 86
    return-void
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, LoI;->a:LoB;

    invoke-static {v0, p1}, LoB;->b(LoB;I)I

    .line 77
    return-void
.end method
