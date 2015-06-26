.class final LoB;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Landroid/os/Bundle;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Landroid/os/Bundle;

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput v0, p0, LoB;->b:I

    .line 161
    iput v0, p0, LoB;->d:I

    .line 163
    iput v0, p0, LoB;->f:I

    .line 164
    iput v0, p0, LoB;->g:I

    .line 166
    iput-object v1, p0, LoB;->i:Landroid/os/Bundle;

    .line 167
    iput v0, p0, LoB;->j:I

    .line 169
    iput-object v1, p0, LoB;->l:Landroid/os/Bundle;

    .line 170
    iput v0, p0, LoB;->m:I

    .line 172
    iput-object v1, p0, LoB;->o:Landroid/os/Bundle;

    .line 175
    if-nez p1, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tag must be not null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    iput-object p1, p0, LoB;->a:Ljava/lang/String;

    .line 179
    return-void
.end method

.method static synthetic a(LoB;I)I
    .locals 0

    .prologue
    .line 125
    iput p1, p0, LoB;->b:I

    return p1
.end method

.method static synthetic a(LoB;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, LoB;->i:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic a(LoB;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, LoB;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(LoB;I)I
    .locals 0

    .prologue
    .line 125
    iput p1, p0, LoB;->d:I

    return p1
.end method

.method static synthetic b(LoB;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, LoB;->i:Landroid/os/Bundle;

    return-object v0
.end method

.method static b(Landroid/os/Bundle;)LoB;
    .locals 2

    .prologue
    .line 210
    new-instance v1, LoB;

    const-string v0, "attributes_tag"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, LoB;-><init>(Ljava/lang/String;)V

    .line 211
    const-string v0, "attributes_title_res_id"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, LoB;->b:I

    .line 212
    const-string v0, "attributes_title"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LoB;->c:Ljava/lang/String;

    .line 213
    const-string v0, "attributes_message_res_id"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, LoB;->d:I

    .line 214
    const-string v0, "attributes_message"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LoB;->e:Ljava/lang/String;

    .line 215
    const-string v0, "attributes_icon_res_id"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, LoB;->f:I

    .line 217
    const-string v0, "attributes_positive_text_res_id"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, LoB;->g:I

    .line 218
    const-string v0, "attributes_positive_text"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LoB;->h:Ljava/lang/String;

    .line 219
    const-string v0, "attributes_positive_bundle"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, v1, LoB;->i:Landroid/os/Bundle;

    .line 221
    const-string v0, "attributes_negative_text_res_id"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, LoB;->j:I

    .line 222
    const-string v0, "attributes_negative_text"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LoB;->k:Ljava/lang/String;

    .line 223
    const-string v0, "attributes_negative_bundle"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, v1, LoB;->l:Landroid/os/Bundle;

    .line 225
    const-string v0, "attributes_neutral_text_res_id"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, LoB;->m:I

    .line 226
    const-string v0, "attributes_neutral_text"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LoB;->n:Ljava/lang/String;

    .line 227
    const-string v0, "attributes_neutral_bundle"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, v1, LoB;->o:Landroid/os/Bundle;

    .line 229
    return-object v1
.end method

.method static synthetic c(LoB;I)I
    .locals 0

    .prologue
    .line 125
    iput p1, p0, LoB;->g:I

    return p1
.end method

.method static synthetic c(LoB;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, LoB;->l:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic d(LoB;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, LoB;->o:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 185
    const-string v0, "attributes_tag"

    iget-object v1, p0, LoB;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v0, "attributes_title_res_id"

    iget v1, p0, LoB;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 188
    const-string v0, "attributes_title"

    iget-object v1, p0, LoB;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v0, "attributes_message_res_id"

    iget v1, p0, LoB;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 191
    const-string v0, "attributes_message"

    iget-object v1, p0, LoB;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v0, "attributes_icon_res_id"

    iget v1, p0, LoB;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 195
    const-string v0, "attributes_positive_text_res_id"

    iget v1, p0, LoB;->g:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 196
    const-string v0, "attributes_positive_text"

    iget-object v1, p0, LoB;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v0, "attributes_positive_bundle"

    iget-object v1, p0, LoB;->i:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 199
    const-string v0, "attributes_negative_text_res_id"

    iget v1, p0, LoB;->j:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    const-string v0, "attributes_negative_text"

    iget-object v1, p0, LoB;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v0, "attributes_negative_bundle"

    iget-object v1, p0, LoB;->l:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 203
    const-string v0, "attributes_neutral_text_res_id"

    iget v1, p0, LoB;->m:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 204
    const-string v0, "attributes_neutral_text"

    iget-object v1, p0, LoB;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v0, "attributes_neutral_bundle"

    iget-object v1, p0, LoB;->o:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 206
    return-void
.end method

.method public final a(LoN;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 235
    iget v0, p0, LoB;->b:I

    if-eq v0, v2, :cond_6

    .line 236
    iget v0, p0, LoB;->b:I

    invoke-virtual {p1, v0}, LoN;->a(I)LoN;

    .line 241
    :cond_0
    :goto_0
    iget v0, p0, LoB;->d:I

    if-eq v0, v2, :cond_7

    .line 242
    iget v0, p0, LoB;->d:I

    invoke-virtual {p1, v0}, LoN;->b(I)LoN;

    .line 247
    :cond_1
    :goto_1
    iget v0, p0, LoB;->f:I

    if-eq v0, v2, :cond_2

    .line 248
    iget v0, p0, LoB;->f:I

    invoke-virtual {p1, v0}, LoN;->b(I)LoN;

    .line 251
    :cond_2
    iget v0, p0, LoB;->g:I

    if-eq v0, v2, :cond_8

    .line 252
    iget v0, p0, LoB;->g:I

    new-instance v1, LoC;

    invoke-direct {v1, p0}, LoC;-><init>(LoB;)V

    invoke-virtual {p1, v0, v1}, LoN;->a(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    .line 267
    :cond_3
    :goto_2
    iget v0, p0, LoB;->j:I

    if-eq v0, v2, :cond_9

    .line 268
    iget v0, p0, LoB;->j:I

    new-instance v1, LoE;

    invoke-direct {v1, p0}, LoE;-><init>(LoB;)V

    invoke-virtual {p1, v0, v1}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    .line 283
    :cond_4
    :goto_3
    iget v0, p0, LoB;->m:I

    if-eq v0, v2, :cond_a

    .line 284
    iget v0, p0, LoB;->m:I

    new-instance v1, LoG;

    invoke-direct {v1, p0}, LoG;-><init>(LoB;)V

    invoke-virtual {p1, v0, v1}, LoN;->c(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    .line 298
    :cond_5
    :goto_4
    return-void

    .line 237
    :cond_6
    iget-object v0, p0, LoB;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, LoB;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, LoN;->a(Ljava/lang/CharSequence;)LoN;

    goto :goto_0

    .line 243
    :cond_7
    iget-object v0, p0, LoB;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, LoB;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, LoN;->b(Ljava/lang/CharSequence;)LoN;

    goto :goto_1

    .line 258
    :cond_8
    iget-object v0, p0, LoB;->h:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 259
    iget-object v0, p0, LoB;->h:Ljava/lang/String;

    new-instance v1, LoD;

    invoke-direct {v1, p0}, LoD;-><init>(LoB;)V

    invoke-virtual {p1, v0, v1}, LoN;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)LoN;

    goto :goto_2

    .line 274
    :cond_9
    iget-object v0, p0, LoB;->k:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 275
    iget-object v0, p0, LoB;->k:Ljava/lang/String;

    new-instance v1, LoF;

    invoke-direct {v1, p0}, LoF;-><init>(LoB;)V

    invoke-virtual {p1, v0, v1}, LoN;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)LoN;

    goto :goto_3

    .line 290
    :cond_a
    iget-object v0, p0, LoB;->n:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 291
    iget-object v0, p0, LoB;->n:Ljava/lang/String;

    new-instance v1, LoH;

    invoke-direct {v1, p0}, LoH;-><init>(LoB;)V

    invoke-virtual {p1, v0, v1}, LoN;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)LoN;

    goto :goto_4
.end method
