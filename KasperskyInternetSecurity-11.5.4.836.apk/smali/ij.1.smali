.class public final Lij;
.super Lil;
.source "SourceFile"


# instance fields
.field private b:I


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p3, p4}, Lil;-><init>(IIIZ)V

    .line 211
    iput p2, p0, Lij;->b:I

    .line 212
    return-void
.end method


# virtual methods
.method public final a()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lij;->a:Lik;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lik;->a(I)V

    .line 216
    iget-object v0, p0, Lij;->a:Lik;

    invoke-virtual {v0}, Lik;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 217
    iget v1, p0, Lij;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
