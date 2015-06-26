.class public final Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;
.super Ljava/util/AbstractList;
.source "CollisionCheckStack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private data:[Ljava/lang/Object;

.field private final initialHash:[I

.field private latestPushResult:Z

.field private next:[I

.field private size:I

.field private useIdentity:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;, "Lae/com/sun/xml/bind/v2/util/CollisionCheckStack<TE;>;"
    const/16 v1, 0x10

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 69
    iput v0, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->size:I

    .line 71
    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->latestPushResult:Z

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->useIdentity:Z

    .line 84
    const/16 v0, 0x11

    new-array v0, v0, [I

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->initialHash:[I

    .line 85
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->data:[Ljava/lang/Object;

    .line 86
    new-array v0, v1, [I

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->next:[I

    .line 87
    return-void
.end method

.method private expandCapacity()V
    .locals 6

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;, "Lae/com/sun/xml/bind/v2/util/CollisionCheckStack<TE;>;"
    const/4 v5, 0x0

    .line 197
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->data:[Ljava/lang/Object;

    array-length v3, v4

    .line 198
    .local v3, "oldSize":I
    mul-int/lit8 v2, v3, 0x2

    .line 199
    .local v2, "newSize":I
    new-array v0, v2, [Ljava/lang/Object;

    .line 200
    .local v0, "d":[Ljava/lang/Object;
    new-array v1, v2, [I

    .line 202
    .local v1, "n":[I
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->data:[Ljava/lang/Object;

    invoke-static {v4, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->next:[I

    invoke-static {v4, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    iput-object v0, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->data:[Ljava/lang/Object;

    .line 206
    iput-object v1, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->next:[I

    .line 207
    return-void
.end method

.method private findDuplicate(Ljava/lang/Object;I)Z
    .locals 4
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;, "Lae/com/sun/xml/bind/v2/util/CollisionCheckStack<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    .line 182
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->initialHash:[I

    aget v1, v3, p2

    .line 183
    .local v1, "p":I
    :goto_0
    if-eqz v1, :cond_3

    .line 184
    add-int/lit8 v1, v1, -0x1

    .line 185
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->data:[Ljava/lang/Object;

    aget-object v0, v3, v1

    .line 186
    .local v0, "existing":Ljava/lang/Object;
    iget-boolean v3, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->useIdentity:Z

    if-eqz v3, :cond_1

    .line 187
    if-ne v0, p1, :cond_2

    .line 193
    .end local v0    # "existing":Ljava/lang/Object;
    :cond_0
    :goto_1
    return v2

    .line 189
    .restart local v0    # "existing":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 191
    :cond_2
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->next:[I

    aget v1, v3, v1

    .line 192
    goto :goto_0

    .line 193
    .end local v0    # "existing":Ljava/lang/Object;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private hash(Ljava/lang/Object;)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 153
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;, "Lae/com/sun/xml/bind/v2/util/CollisionCheckStack<TE;>;"
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->useIdentity:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->initialHash:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public findDuplicate(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;, "Lae/com/sun/xml/bind/v2/util/CollisionCheckStack<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 139
    .local v0, "hash":I
    invoke-direct {p0, p1, v0}, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->findDuplicate(Ljava/lang/Object;I)Z

    move-result v1

    return v1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;, "Lae/com/sun/xml/bind/v2/util/CollisionCheckStack<TE;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->data:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getCycleString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 223
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;, "Lae/com/sun/xml/bind/v2/util/CollisionCheckStack<TE;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 225
    .local v0, "i":I
    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 226
    .local v1, "obj":Ljava/lang/Object;, "TE;"
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    :cond_0
    const-string v4, " -> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 231
    .local v3, "x":Ljava/lang/Object;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    if-ne v1, v3, :cond_0

    .line 234
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getLatestPushResult()Z
    .locals 1

    .prologue
    .line 102
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;, "Lae/com/sun/xml/bind/v2/util/CollisionCheckStack<TE;>;"
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->latestPushResult:Z

    return v0
.end method

.method public getUseIdentity()Z
    .locals 1

    .prologue
    .line 98
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;, "Lae/com/sun/xml/bind/v2/util/CollisionCheckStack<TE;>;"
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->useIdentity:Z

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;, "Lae/com/sun/xml/bind/v2/util/CollisionCheckStack<TE;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->data:[Ljava/lang/Object;

    iget v1, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public pop()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;, "Lae/com/sun/xml/bind/v2/util/CollisionCheckStack<TE;>;"
    iget v3, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->size:I

    .line 161
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->data:[Ljava/lang/Object;

    iget v4, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->size:I

    aget-object v2, v3, v4

    .line 162
    .local v2, "o":Ljava/lang/Object;
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->data:[Ljava/lang/Object;

    iget v4, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->size:I

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 163
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->next:[I

    iget v4, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->size:I

    aget v1, v3, v4

    .line 164
    .local v1, "n":I
    if-gez v1, :cond_0

    .line 171
    :goto_0
    return-object v2

    .line 167
    :cond_0
    invoke-direct {p0, v2}, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 168
    .local v0, "hash":I
    sget-boolean v3, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->initialHash:[I

    aget v3, v3, v0

    iget v4, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->size:I

    add-int/lit8 v4, v4, 0x1

    if-eq v3, v4, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 169
    :cond_1
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->initialHash:[I

    aput v1, v3, v0

    goto :goto_0
.end method

.method public push(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;, "Lae/com/sun/xml/bind/v2/util/CollisionCheckStack<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->data:[Ljava/lang/Object;

    array-length v2, v2

    iget v3, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->size:I

    if-ne v2, v3, :cond_0

    .line 113
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->expandCapacity()V

    .line 115
    :cond_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->data:[Ljava/lang/Object;

    iget v3, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->size:I

    aput-object p1, v2, v3

    .line 116
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 117
    .local v0, "hash":I
    invoke-direct {p0, p1, v0}, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->findDuplicate(Ljava/lang/Object;I)Z

    move-result v1

    .line 118
    .local v1, "r":Z
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->next:[I

    iget v3, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->size:I

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->initialHash:[I

    aget v4, v4, v0

    aput v4, v2, v3

    .line 119
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->initialHash:[I

    iget v3, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->size:I

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v0

    .line 120
    iget v2, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->size:I

    .line 121
    iput-boolean v1, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->latestPushResult:Z

    .line 122
    iget-boolean v2, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->latestPushResult:Z

    return v2
.end method

.method public pushNocheck(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;, "Lae/com/sun/xml/bind/v2/util/CollisionCheckStack<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->data:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->size:I

    if-ne v0, v1, :cond_0

    .line 131
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->expandCapacity()V

    .line 132
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->data:[Ljava/lang/Object;

    iget v1, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->size:I

    aput-object p1, v0, v1

    .line 133
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->next:[I

    iget v1, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->size:I

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 134
    iget v0, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->size:I

    .line 135
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;, "Lae/com/sun/xml/bind/v2/util/CollisionCheckStack<TE;>;"
    const/4 v1, 0x0

    .line 213
    iget v0, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->size:I

    if-lez v0, :cond_0

    .line 214
    iput v1, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->size:I

    .line 215
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->initialHash:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 217
    :cond_0
    return-void
.end method

.method public setUseIdentity(Z)V
    .locals 0
    .param p1, "useIdentity"    # Z

    .prologue
    .line 94
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;, "Lae/com/sun/xml/bind/v2/util/CollisionCheckStack<TE;>;"
    iput-boolean p1, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->useIdentity:Z

    .line 95
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 149
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;, "Lae/com/sun/xml/bind/v2/util/CollisionCheckStack<TE;>;"
    iget v0, p0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->size:I

    return v0
.end method
